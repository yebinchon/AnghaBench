
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ide_tape_obj {int minor; int valid; struct gendisk* disk; TYPE_1__* drive; } ;
struct gendisk {int * private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int * driver_data; int dev_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int BUG_ON (int ) ;
 int IDETAPE_MAJOR ;
 int IDE_DFLAG_DSC_OVERLAP ;
 int MKDEV (int ,int) ;
 int device_destroy (int ,int ) ;
 int ide_tape_obj ;
 int ** idetape_devs ;
 int idetape_sysfs_class ;
 int kfree (struct ide_tape_obj*) ;
 int put_disk (struct gendisk*) ;
 struct ide_tape_obj* to_ide_drv (struct device*,int ) ;

__attribute__((used)) static void ide_tape_release(struct device *dev)
{
 struct ide_tape_obj *tape = to_ide_drv(dev, ide_tape_obj);
 ide_drive_t *drive = tape->drive;
 struct gendisk *g = tape->disk;

 BUG_ON(tape->valid);

 drive->dev_flags &= ~IDE_DFLAG_DSC_OVERLAP;
 drive->driver_data = ((void*)0);
 device_destroy(idetape_sysfs_class, MKDEV(IDETAPE_MAJOR, tape->minor));
 device_destroy(idetape_sysfs_class,
   MKDEV(IDETAPE_MAJOR, tape->minor + 128));
 idetape_devs[tape->minor] = ((void*)0);
 g->private_data = ((void*)0);
 put_disk(g);
 kfree(tape);
}
