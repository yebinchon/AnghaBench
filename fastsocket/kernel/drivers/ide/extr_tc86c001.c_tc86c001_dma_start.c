
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned long config_data; int * expiry; int rq; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {scalar_t__ dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int SECTOR_SIZE ;
 unsigned long blk_rq_sectors (int ) ;
 int ide_dma_start (TYPE_2__*) ;
 int ide_set_hwifdata (TYPE_1__*,int *) ;
 int outw (int,unsigned long) ;
 int tc86c001_timer_expiry ;

__attribute__((used)) static void tc86c001_dma_start(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 unsigned long sc_base = hwif->config_data;
 unsigned long twcr_port = sc_base + (drive->dn ? 0x06 : 0x04);
 unsigned long nsectors = blk_rq_sectors(hwif->rq);






 outw(nsectors, sc_base + 0x0a);
 outw(SECTOR_SIZE / 2, twcr_port);


 ide_set_hwifdata(hwif, hwif->expiry);
 hwif->expiry = &tc86c001_timer_expiry;

 ide_dma_start(drive);
}
