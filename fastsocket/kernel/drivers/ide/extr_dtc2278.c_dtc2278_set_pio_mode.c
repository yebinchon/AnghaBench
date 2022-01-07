
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ide_drive_t ;


 int dtc2278_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sub22 (int,int) ;

__attribute__((used)) static void dtc2278_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 unsigned long flags;

 if (pio >= 3) {
  spin_lock_irqsave(&dtc2278_lock, flags);



  sub22(1,0xc3);
  sub22(0,0xa0);
  spin_unlock_irqrestore(&dtc2278_lock, flags);
 } else {



 }
}
