
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ offset; scalar_t__ default_offset; int default_space; int space; } ;
struct mddev {scalar_t__ major_version; scalar_t__ minor_version; scalar_t__ ctime; scalar_t__ level; scalar_t__ chunk_sectors; int dev_sectors; scalar_t__ raid_disks; scalar_t__ layout; scalar_t__ new_layout; TYPE_4__ bitmap_info; TYPE_3__* pers; TYPE_2__* bitmap; scalar_t__ sync_thread; scalar_t__ recovery; int persistent; } ;
typedef int sector_t ;
struct TYPE_11__ {scalar_t__ major_version; scalar_t__ minor_version; scalar_t__ ctime; scalar_t__ level; int not_persistent; scalar_t__ chunk_size; int state; int size; scalar_t__ raid_disks; scalar_t__ layout; } ;
typedef TYPE_5__ mdu_array_info_t ;
struct TYPE_9__ {int (* check_reshape ) (struct mddev*) ;int (* quiesce ) (struct mddev*,int) ;} ;
struct TYPE_7__ {scalar_t__ file; } ;
struct TYPE_8__ {TYPE_1__ storage; } ;


 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int MD_SB_BITMAP_PRESENT ;
 int bitmap_create (struct mddev*) ;
 int bitmap_destroy (struct mddev*) ;
 int bitmap_load (struct mddev*) ;
 int md_update_sb (struct mddev*,int) ;
 int stub1 (struct mddev*) ;
 int stub2 (struct mddev*,int) ;
 int stub3 (struct mddev*,int) ;
 int stub4 (struct mddev*,int) ;
 int stub5 (struct mddev*,int) ;
 int update_raid_disks (struct mddev*,scalar_t__) ;
 int update_size (struct mddev*,int) ;

__attribute__((used)) static int update_array_info(struct mddev *mddev, mdu_array_info_t *info)
{
 int rv = 0;
 int cnt = 0;
 int state = 0;


 if (mddev->bitmap && mddev->bitmap_info.offset)
  state |= (1 << MD_SB_BITMAP_PRESENT);

 if (mddev->major_version != info->major_version ||
     mddev->minor_version != info->minor_version ||

     mddev->ctime != info->ctime ||
     mddev->level != info->level ||

     !mddev->persistent != info->not_persistent||
     mddev->chunk_sectors != info->chunk_size >> 9 ||

     ((state^info->state) & 0xfffffe00)
  )
  return -EINVAL;

 if (info->size >= 0 && mddev->dev_sectors / 2 != info->size)
  cnt++;
 if (mddev->raid_disks != info->raid_disks)
  cnt++;
 if (mddev->layout != info->layout)
  cnt++;
 if ((state ^ info->state) & (1<<MD_SB_BITMAP_PRESENT))
  cnt++;
 if (cnt == 0)
  return 0;
 if (cnt > 1)
  return -EINVAL;

 if (mddev->layout != info->layout) {




  if (mddev->pers->check_reshape == ((void*)0))
   return -EINVAL;
  else {
   mddev->new_layout = info->layout;
   rv = mddev->pers->check_reshape(mddev);
   if (rv)
    mddev->new_layout = mddev->layout;
   return rv;
  }
 }
 if (info->size >= 0 && mddev->dev_sectors / 2 != info->size)
  rv = update_size(mddev, (sector_t)info->size * 2);

 if (mddev->raid_disks != info->raid_disks)
  rv = update_raid_disks(mddev, info->raid_disks);

 if ((state ^ info->state) & (1<<MD_SB_BITMAP_PRESENT)) {
  if (mddev->pers->quiesce == ((void*)0))
   return -EINVAL;
  if (mddev->recovery || mddev->sync_thread)
   return -EBUSY;
  if (info->state & (1<<MD_SB_BITMAP_PRESENT)) {

   if (mddev->bitmap)
    return -EEXIST;
   if (mddev->bitmap_info.default_offset == 0)
    return -EINVAL;
   mddev->bitmap_info.offset =
    mddev->bitmap_info.default_offset;
   mddev->bitmap_info.space =
    mddev->bitmap_info.default_space;
   mddev->pers->quiesce(mddev, 1);
   rv = bitmap_create(mddev);
   if (!rv)
    rv = bitmap_load(mddev);
   if (rv)
    bitmap_destroy(mddev);
   mddev->pers->quiesce(mddev, 0);
  } else {

   if (!mddev->bitmap)
    return -ENOENT;
   if (mddev->bitmap->storage.file)
    return -EINVAL;
   mddev->pers->quiesce(mddev, 1);
   bitmap_destroy(mddev);
   mddev->pers->quiesce(mddev, 0);
   mddev->bitmap_info.offset = 0;
  }
 }
 md_update_sb(mddev, 1);
 return rv;
}
