
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ ide_drive_t ;


 int DBG (char*) ;
 size_t const XFER_MW_DMA_0 ;
 scalar_t__ ide_get_drivedata (TYPE_1__*) ;
 int ide_set_drivedata (TYPE_1__*,void*) ;
 int ide_xfer_verbose (size_t const) ;

__attribute__((used)) static void sl82c105_set_dma_mode(ide_drive_t *drive, const u8 speed)
{
 static u16 mwdma_timings[] = {0x0707, 0x0201, 0x0200};
 unsigned long timings = (unsigned long)ide_get_drivedata(drive);
 u16 drv_ctrl;

  DBG(("sl82c105_tune_chipset(drive:%s, speed:%s)\n",
      drive->name, ide_xfer_verbose(speed)));

 drv_ctrl = mwdma_timings[speed - XFER_MW_DMA_0];





 timings &= 0x0000ffff;
 timings |= (unsigned long)drv_ctrl << 16;
 ide_set_drivedata(drive, (void *)timings);
}
