
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {TYPE_1__* tp_ops; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_8__ {int name; TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_6__ {int (* read_status ) (TYPE_2__*) ;} ;


 int ATA_BUSY ;
 int pr_err (char*,int ) ;
 int stub1 (TYPE_2__*) ;
 int udelay (int) ;

__attribute__((used)) static u8 wait_drive_not_busy(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 int retries;
 u8 stat;





 for (retries = 0; retries < 1000; retries++) {
  stat = hwif->tp_ops->read_status(hwif);

  if (stat & ATA_BUSY)
   udelay(10);
  else
   break;
 }

 if (stat & ATA_BUSY)
  pr_err("%s: drive still BUSY!\n", drive->name);

 return stat;
}
