
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int dn; int hwif; } ;
typedef TYPE_1__ ide_drive_t ;


 unsigned long CS5530_BASEREG (int ) ;






 unsigned int inl (unsigned long) ;
 int outl (unsigned int,unsigned long) ;

__attribute__((used)) static void cs5530_set_dma_mode(ide_drive_t *drive, const u8 mode)
{
 unsigned long basereg;
 unsigned int reg, timings = 0;

 switch (mode) {
  case 130: timings = 0x00921250; break;
  case 129: timings = 0x00911140; break;
  case 128: timings = 0x00911030; break;
  case 133: timings = 0x00077771; break;
  case 132: timings = 0x00012121; break;
  case 131: timings = 0x00002020; break;
 }
 basereg = CS5530_BASEREG(drive->hwif);
 reg = inl(basereg + 4);
 timings |= reg & 0x80000000;
 if ((drive-> dn & 1) == 0) {
  outl(timings, basereg + 4);
 } else {
  if (timings & 0x00100000)
   reg |= 0x00100000;
  else
   reg &= ~0x00100000;
  outl(reg, basereg + 4);
  outl(timings, basereg + 12);
 }
}
