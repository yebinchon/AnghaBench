
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pool_features {scalar_t__ mode; scalar_t__ discard_enabled; scalar_t__ discard_passdown; } ;
struct TYPE_6__ {int congested_fn; } ;
struct pool_c {TYPE_3__ callbacks; struct pool* pool; struct pool_features requested_pf; struct pool_features adjusted_pf; scalar_t__ low_water_blocks; struct dm_dev* data_dev; struct dm_dev* metadata_dev; struct dm_target* ti; } ;
struct TYPE_4__ {scalar_t__ discard_enabled; } ;
struct pool {int pmd; TYPE_1__ pf; } ;
struct dm_target {char* error; int num_flush_requests; int discard_zeroes_data_unsupported; int num_discard_requests; int discards_supported; int table; struct pool_c* private; } ;
struct dm_dev {int bdev; } ;
struct dm_arg_set {unsigned int argc; char** argv; } ;
typedef int fmode_t ;
typedef scalar_t__ dm_block_t ;
struct TYPE_5__ {int mutex; } ;


 unsigned long DATA_DEV_BLOCK_SIZE_MAX_SECTORS ;
 unsigned long DATA_DEV_BLOCK_SIZE_MIN_SECTORS ;
 int EINVAL ;
 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct pool*) ;
 scalar_t__ PM_READ_ONLY ;
 int PTR_ERR (struct pool*) ;
 int __pool_dec (struct pool*) ;
 struct pool* __pool_find (int ,int ,unsigned long,int,char**,int*) ;
 int calc_metadata_threshold (struct pool_c*) ;
 int dm_consume_args (struct dm_arg_set*,int) ;
 int dm_get_device (struct dm_target*,char*,int,struct dm_dev**) ;
 int dm_pool_register_metadata_threshold (int ,int ,int ,struct pool*) ;
 int dm_put_device (struct dm_target*,struct dm_dev*) ;
 int dm_table_add_target_callbacks (int ,TYPE_3__*) ;
 int dm_table_get_md (int ) ;
 TYPE_2__ dm_thin_pool_table ;
 int kfree (struct pool_c*) ;
 scalar_t__ kstrtoul (char*,int,unsigned long*) ;
 scalar_t__ kstrtoull (char*,int,unsigned long long*) ;
 struct pool_c* kzalloc (int,int ) ;
 int metadata_low_callback ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parse_pool_features (struct dm_arg_set*,struct pool_features*,struct dm_target*) ;
 int pool_features_init (struct pool_features*) ;
 int pool_is_congested ;
 int warn_if_metadata_device_too_big (int ) ;

__attribute__((used)) static int pool_ctr(struct dm_target *ti, unsigned argc, char **argv)
{
 int r, pool_created = 0;
 struct pool_c *pt;
 struct pool *pool;
 struct pool_features pf;
 struct dm_arg_set as;
 struct dm_dev *data_dev;
 unsigned long block_size;
 dm_block_t low_water_blocks;
 struct dm_dev *metadata_dev;
 fmode_t metadata_mode;




 mutex_lock(&dm_thin_pool_table.mutex);

 if (argc < 4) {
  ti->error = "Invalid argument count";
  r = -EINVAL;
  goto out_unlock;
 }

 as.argc = argc;
 as.argv = argv;




 pool_features_init(&pf);

 dm_consume_args(&as, 4);
 r = parse_pool_features(&as, &pf, ti);
 if (r)
  goto out_unlock;

 metadata_mode = FMODE_READ | ((pf.mode == PM_READ_ONLY) ? 0 : FMODE_WRITE);
 r = dm_get_device(ti, argv[0], metadata_mode, &metadata_dev);
 if (r) {
  ti->error = "Error opening metadata block device";
  goto out_unlock;
 }
 warn_if_metadata_device_too_big(metadata_dev->bdev);

 r = dm_get_device(ti, argv[1], FMODE_READ | FMODE_WRITE, &data_dev);
 if (r) {
  ti->error = "Error getting data device";
  goto out_metadata;
 }

 if (kstrtoul(argv[2], 10, &block_size) || !block_size ||
     block_size < DATA_DEV_BLOCK_SIZE_MIN_SECTORS ||
     block_size > DATA_DEV_BLOCK_SIZE_MAX_SECTORS ||
     block_size & (DATA_DEV_BLOCK_SIZE_MIN_SECTORS - 1)) {
  ti->error = "Invalid block size";
  r = -EINVAL;
  goto out;
 }

 if (kstrtoull(argv[3], 10, (unsigned long long *)&low_water_blocks)) {
  ti->error = "Invalid low water mark";
  r = -EINVAL;
  goto out;
 }

 pt = kzalloc(sizeof(*pt), GFP_KERNEL);
 if (!pt) {
  r = -ENOMEM;
  goto out;
 }

 pool = __pool_find(dm_table_get_md(ti->table), metadata_dev->bdev,
      block_size, pf.mode == PM_READ_ONLY, &ti->error, &pool_created);
 if (IS_ERR(pool)) {
  r = PTR_ERR(pool);
  goto out_free_pt;
 }







 if (!pool_created && pf.discard_enabled != pool->pf.discard_enabled) {
  ti->error = "Discard support cannot be disabled once enabled";
  r = -EINVAL;
  goto out_flags_changed;
 }

 pt->pool = pool;
 pt->ti = ti;
 pt->metadata_dev = metadata_dev;
 pt->data_dev = data_dev;
 pt->low_water_blocks = low_water_blocks;
 pt->adjusted_pf = pt->requested_pf = pf;
 ti->num_flush_requests = 1;






 ti->discard_zeroes_data_unsupported = 1;
 if (pf.discard_enabled && pf.discard_passdown) {
  ti->num_discard_requests = 1;






  ti->discards_supported = 1;
 }
 ti->private = pt;

 r = dm_pool_register_metadata_threshold(pt->pool->pmd,
      calc_metadata_threshold(pt),
      metadata_low_callback,
      pool);
 if (r)
  goto out_free_pt;

 pt->callbacks.congested_fn = pool_is_congested;
 dm_table_add_target_callbacks(ti->table, &pt->callbacks);

 mutex_unlock(&dm_thin_pool_table.mutex);

 return 0;

out_flags_changed:
 __pool_dec(pool);
out_free_pt:
 kfree(pt);
out:
 dm_put_device(ti, data_dev);
out_metadata:
 dm_put_device(ti, metadata_dev);
out_unlock:
 mutex_unlock(&dm_thin_pool_table.mutex);

 return r;
}
