
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct raid_type {int dummy; } ;
struct TYPE_5__ {scalar_t__ array_sectors; int reconfig_mutex; scalar_t__ in_sync; int event_work; int sync_super; } ;
struct TYPE_6__ {int unplug_fn; int congested_fn; } ;
struct raid_set {TYPE_1__ md; TYPE_4__ callbacks; } ;
struct dm_target {char* error; int num_flush_requests; scalar_t__ len; int table; struct raid_set* private; } ;


 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 unsigned long INT_MAX ;
 scalar_t__ IS_ERR (struct raid_set*) ;
 int PTR_ERR (struct raid_set*) ;
 int analyse_superblocks (struct dm_target*,struct raid_set*) ;
 struct raid_set* context_alloc (struct dm_target*,struct raid_type*,unsigned int) ;
 int context_free (struct raid_set*) ;
 int dev_parms (struct raid_set*,char**) ;
 int dm_table_add_target_callbacks (int ,TYPE_4__*) ;
 int do_table_event ;
 struct raid_type* get_raid_type (char*) ;
 scalar_t__ kstrtoul (char*,int,unsigned long*) ;
 int md_run (TYPE_1__*) ;
 int md_stop (TYPE_1__*) ;
 int mddev_suspend (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parse_raid_params (struct raid_set*,char**,unsigned int) ;
 int raid_is_congested ;
 int raid_unplug ;
 int super_sync ;

__attribute__((used)) static int raid_ctr(struct dm_target *ti, unsigned argc, char **argv)
{
 int ret;
 struct raid_type *rt;
 unsigned long num_raid_params, num_raid_devs;
 struct raid_set *rs = ((void*)0);


 if (argc < 2) {
  ti->error = "Too few arguments";
  return -EINVAL;
 }


 rt = get_raid_type(argv[0]);
 if (!rt) {
  ti->error = "Unrecognised raid_type";
  return -EINVAL;
 }
 argc--;
 argv++;


 if (kstrtoul(argv[0], 10, &num_raid_params) < 0) {
  ti->error = "Cannot understand number of RAID parameters";
  return -EINVAL;
 }
 argc--;
 argv++;


 if (num_raid_params + 1 > argc) {
  ti->error = "Arguments do not agree with counts given";
  return -EINVAL;
 }

 if ((kstrtoul(argv[num_raid_params], 10, &num_raid_devs) < 0) ||
     (num_raid_devs >= INT_MAX)) {
  ti->error = "Cannot understand number of raid devices";
  return -EINVAL;
 }

 rs = context_alloc(ti, rt, (unsigned)num_raid_devs);
 if (IS_ERR(rs))
  return PTR_ERR(rs);

 ret = parse_raid_params(rs, argv, (unsigned)num_raid_params);
 if (ret)
  goto bad;

 ret = -EINVAL;

 argc -= num_raid_params + 1;
 argv += num_raid_params + 1;

 if (argc != (num_raid_devs * 2)) {
  ti->error = "Supplied RAID devices does not match the count given";
  goto bad;
 }

 ret = dev_parms(rs, argv);
 if (ret)
  goto bad;

 rs->md.sync_super = super_sync;
 ret = analyse_superblocks(ti, rs);
 if (ret)
  goto bad;

 INIT_WORK(&rs->md.event_work, do_table_event);
 ti->private = rs;
 ti->num_flush_requests = 1;

 mutex_lock(&rs->md.reconfig_mutex);
 ret = md_run(&rs->md);
 rs->md.in_sync = 0;
 mutex_unlock(&rs->md.reconfig_mutex);

 if (ret) {
  ti->error = "Fail to run raid array";
  goto bad;
 }

 if (ti->len != rs->md.array_sectors) {
  ti->error = "Array size does not match requested target length";
  ret = -EINVAL;
  goto size_mismatch;
 }
 rs->callbacks.congested_fn = raid_is_congested;
 rs->callbacks.unplug_fn = raid_unplug;
 dm_table_add_target_callbacks(ti->table, &rs->callbacks);

 mddev_suspend(&rs->md);
 return 0;

size_mismatch:
 md_stop(&rs->md);
bad:
 context_free(rs);

 return ret;
}
