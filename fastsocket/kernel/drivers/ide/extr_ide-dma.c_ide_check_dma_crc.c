
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ current_speed; scalar_t__ crc_count; } ;
typedef TYPE_1__ ide_drive_t ;


 scalar_t__ XFER_PIO_4 ;
 scalar_t__ XFER_SW_DMA_0 ;
 scalar_t__ XFER_UDMA_0 ;
 scalar_t__ XFER_UDMA_7 ;
 int ide_dma_off_quietly (TYPE_1__*) ;
 int ide_dma_on (TYPE_1__*) ;
 int ide_set_xfer_rate (TYPE_1__*,scalar_t__) ;

void ide_check_dma_crc(ide_drive_t *drive)
{
 u8 mode;

 ide_dma_off_quietly(drive);
 drive->crc_count = 0;
 mode = drive->current_speed;




 if (mode > XFER_UDMA_0 && mode <= XFER_UDMA_7)
  mode--;
 else
  mode = XFER_PIO_4;
 ide_set_xfer_rate(drive, mode);
 if (drive->current_speed >= XFER_SW_DMA_0)
  ide_dma_on(drive);
}
