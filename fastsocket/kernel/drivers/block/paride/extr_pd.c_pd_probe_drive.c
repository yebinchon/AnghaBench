
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int drive; struct gendisk* gd; int name; } ;
struct gendisk {int first_minor; int queue; struct pd_unit* private_data; int major; int * fops; int disk_name; } ;


 int PD_BITS ;
 struct gendisk* alloc_disk (int) ;
 int major ;
 struct pd_unit* pd ;
 int pd_fops ;
 int pd_identify ;
 int pd_queue ;
 scalar_t__ pd_special_command (struct pd_unit*,int ) ;
 int put_disk (struct gendisk*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void pd_probe_drive(struct pd_unit *disk)
{
 struct gendisk *p = alloc_disk(1 << PD_BITS);
 if (!p)
  return;
 strcpy(p->disk_name, disk->name);
 p->fops = &pd_fops;
 p->major = major;
 p->first_minor = (disk - pd) << PD_BITS;
 disk->gd = p;
 p->private_data = disk;
 p->queue = pd_queue;

 if (disk->drive == -1) {
  for (disk->drive = 0; disk->drive <= 1; disk->drive++)
   if (pd_special_command(disk, pd_identify) == 0)
    return;
 } else if (pd_special_command(disk, pd_identify) == 0)
  return;
 disk->gd = ((void*)0);
 put_disk(p);
}
