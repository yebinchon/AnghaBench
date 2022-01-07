
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct gendisk {int flags; struct request_queue* queue; } ;
struct TYPE_6__ {int usage_count; scalar_t__ heads; } ;
typedef TYPE_1__ drive_info_struct ;
struct TYPE_7__ {size_t highest_lun; TYPE_1__** drv; int num_luns; struct gendisk** gendisk; } ;
typedef TYPE_2__ ctlr_info_t ;


 int CAP_SYS_RAWIO ;
 int CISS_MAX_LUN ;
 int EBUSY ;
 int EPERM ;
 int GENHD_FL_UP ;
 int blk_cleanup_queue (struct request_queue*) ;
 int capable (int ) ;
 int cciss_clear_drive_info (TYPE_1__*) ;
 int cciss_destroy_ld_sysfs_entry (TYPE_2__*,int,int ) ;
 int del_gendisk (struct gendisk*) ;
 int put_disk (struct gendisk*) ;
 int set_capacity (struct gendisk*,int ) ;

__attribute__((used)) static int deregister_disk(ctlr_info_t *h, int drv_index,
      int clear_all, int via_ioctl)
{
 int i;
 struct gendisk *disk;
 drive_info_struct *drv;
 int recalculate_highest_lun;

 if (!capable(CAP_SYS_RAWIO))
  return -EPERM;

 drv = h->drv[drv_index];
 disk = h->gendisk[drv_index];


 if (clear_all || (h->gendisk[0] == disk)) {
  if (drv->usage_count > via_ioctl)
   return -EBUSY;
 } else if (drv->usage_count > 0)
  return -EBUSY;

 recalculate_highest_lun = (drv == h->drv[h->highest_lun]);





 if (h->gendisk[0] != disk) {
  struct request_queue *q = disk->queue;
  if (disk->flags & GENHD_FL_UP) {
   cciss_destroy_ld_sysfs_entry(h, drv_index, 0);
   del_gendisk(disk);
  }
  if (q)
   blk_cleanup_queue(q);






  if (clear_all){





   for (i=0; i < CISS_MAX_LUN; i++){
    if (h->gendisk[i] == disk) {
     h->gendisk[i] = ((void*)0);
     break;
    }
   }
   put_disk(disk);
  }
 } else {
  set_capacity(disk, 0);
  cciss_clear_drive_info(drv);
 }

 --h->num_luns;


 if (clear_all && recalculate_highest_lun) {
  int i, newhighest = -1;
  for (i = 0; i <= h->highest_lun; i++) {

   if (h->drv[i] && h->drv[i]->heads)
    newhighest = i;
  }
  h->highest_lun = newhighest;
 }
 return 0;
}
