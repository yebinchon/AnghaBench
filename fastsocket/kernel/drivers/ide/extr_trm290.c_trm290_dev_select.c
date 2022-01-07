
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dev_flags; int select; TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_6__ {int device_addr; } ;
struct TYPE_7__ {TYPE_1__ io_ports; } ;


 int ATA_DEVICE_OBS ;
 int IDE_DFLAG_USING_DMA ;
 int outb (int,int ) ;
 int trm290_prepare_drive (TYPE_3__*,int) ;

__attribute__((used)) static void trm290_dev_select(ide_drive_t *drive)
{
 trm290_prepare_drive(drive, !!(drive->dev_flags & IDE_DFLAG_USING_DMA));

 outb(drive->select | ATA_DEVICE_OBS, drive->hwif->io_ports.device_addr);
}
