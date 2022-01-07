
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hd_struct {int policy; } ;
struct TYPE_2__ {int policy; } ;
struct gendisk {TYPE_1__ part0; } ;
struct disk_part_iter {int dummy; } ;


 int DISK_PITER_INCL_EMPTY ;
 int disk_part_iter_exit (struct disk_part_iter*) ;
 int disk_part_iter_init (struct disk_part_iter*,struct gendisk*,int ) ;
 struct hd_struct* disk_part_iter_next (struct disk_part_iter*) ;
 int set_disk_ro_uevent (struct gendisk*,int) ;

void set_disk_ro(struct gendisk *disk, int flag)
{
 struct disk_part_iter piter;
 struct hd_struct *part;

 if (disk->part0.policy != flag) {
  set_disk_ro_uevent(disk, flag);
  disk->part0.policy = flag;
 }

 disk_part_iter_init(&piter, disk, DISK_PITER_INCL_EMPTY);
 while ((part = disk_part_iter_next(&piter)))
  part->policy = flag;
 disk_part_iter_exit(&piter);
}
