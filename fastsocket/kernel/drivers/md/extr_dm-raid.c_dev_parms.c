
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int raid_disks; int persistent; int major_version; int recovery_cp; scalar_t__ external; int disks; } ;
struct raid_set {TYPE_4__* ti; TYPE_3__ md; TYPE_2__* dev; } ;
struct TYPE_10__ {int bdev; } ;
struct TYPE_9__ {char* error; int table; } ;
struct TYPE_6__ {int raid_disk; int flags; int same_set; int bdev; int meta_bdev; int recovery_offset; int sb_page; TYPE_3__* mddev; scalar_t__ data_offset; } ;
struct TYPE_7__ {TYPE_1__ rdev; TYPE_5__* data_dev; TYPE_5__* meta_dev; } ;


 int DMERR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int In_sync ;
 int alloc_page (int ) ;
 int dm_get_device (TYPE_4__*,char*,int ,TYPE_5__**) ;
 int dm_table_get_mode (int ) ;
 int list_add (int *,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int dev_parms(struct raid_set *rs, char **argv)
{
 int i;
 int rebuild = 0;
 int metadata_available = 0;
 int ret = 0;

 for (i = 0; i < rs->md.raid_disks; i++, argv += 2) {
  rs->dev[i].rdev.raid_disk = i;

  rs->dev[i].meta_dev = ((void*)0);
  rs->dev[i].data_dev = ((void*)0);





  rs->dev[i].rdev.data_offset = 0;
  rs->dev[i].rdev.mddev = &rs->md;

  if (strcmp(argv[0], "-")) {
   ret = dm_get_device(rs->ti, argv[0],
         dm_table_get_mode(rs->ti->table),
         &rs->dev[i].meta_dev);
   rs->ti->error = "RAID metadata device lookup failure";
   if (ret)
    return ret;

   rs->dev[i].rdev.sb_page = alloc_page(GFP_KERNEL);
   if (!rs->dev[i].rdev.sb_page)
    return -ENOMEM;
  }

  if (!strcmp(argv[1], "-")) {
   if (!test_bit(In_sync, &rs->dev[i].rdev.flags) &&
       (!rs->dev[i].rdev.recovery_offset)) {
    rs->ti->error = "Drive designated for rebuild not specified";
    return -EINVAL;
   }

   rs->ti->error = "No data device supplied with metadata device";
   if (rs->dev[i].meta_dev)
    return -EINVAL;

   continue;
  }

  ret = dm_get_device(rs->ti, argv[1],
        dm_table_get_mode(rs->ti->table),
        &rs->dev[i].data_dev);
  if (ret) {
   rs->ti->error = "RAID device lookup failure";
   return ret;
  }

  if (rs->dev[i].meta_dev) {
   metadata_available = 1;
   rs->dev[i].rdev.meta_bdev = rs->dev[i].meta_dev->bdev;
  }
  rs->dev[i].rdev.bdev = rs->dev[i].data_dev->bdev;
  list_add(&rs->dev[i].rdev.same_set, &rs->md.disks);
  if (!test_bit(In_sync, &rs->dev[i].rdev.flags))
   rebuild++;
 }

 if (metadata_available) {
  rs->md.external = 0;
  rs->md.persistent = 1;
  rs->md.major_version = 2;
 } else if (rebuild && !rs->md.recovery_cp) {
  DMERR("Unable to rebuild drive while array is not in-sync");
  rs->ti->error = "RAID device lookup failure";
  return -EINVAL;
 }

 return 0;
}
