
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {TYPE_1__* tp_ops; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_5__ {int (* read_status ) (TYPE_2__*) ;} ;


 int ATA_BUSY ;
 int EBUSY ;
 int ENODEV ;
 int mdelay (int) ;
 int stub1 (TYPE_2__*) ;
 int touch_nmi_watchdog () ;
 int touch_softlockup_watchdog () ;

int ide_wait_not_busy(ide_hwif_t *hwif, unsigned long timeout)
{
 u8 stat = 0;

 while (timeout--) {




  mdelay(1);
  stat = hwif->tp_ops->read_status(hwif);
  if ((stat & ATA_BUSY) == 0)
   return 0;





  if (stat == 0xff)
   return -ENODEV;
  touch_softlockup_watchdog();
  touch_nmi_watchdog();
 }
 return -EBUSY;
}
