
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {int dn; int hwif; } ;
typedef TYPE_1__ ide_drive_t ;


 unsigned long CS5530_BASEREG (int ) ;
 int ** cs5530_pio_timings ;
 int inl (unsigned long) ;
 int outl (int ,unsigned long) ;

__attribute__((used)) static void cs5530_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 unsigned long basereg = CS5530_BASEREG(drive->hwif);
 unsigned int format = (inl(basereg + 4) >> 31) & 1;

 outl(cs5530_pio_timings[format][pio], basereg + ((drive->dn & 1)<<3));
}
