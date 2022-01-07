
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gendisk {unsigned int first_minor; int queue; int disk_name; int major; } ;
struct TYPE_4__ {char index; int major; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dn; int queue; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 char MAX_DRIVES ;
 unsigned int PARTN_BITS ;
 int sprintf (int ,char*,char) ;

void ide_init_disk(struct gendisk *disk, ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 unsigned int unit = drive->dn & 1;

 disk->major = hwif->major;
 disk->first_minor = unit << PARTN_BITS;
 sprintf(disk->disk_name, "hd%c", 'a' + hwif->index * MAX_DRIVES + unit);
 disk->queue = drive->queue;
}
