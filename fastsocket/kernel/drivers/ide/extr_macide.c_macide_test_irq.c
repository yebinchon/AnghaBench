
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_hwif_t ;


 int* ide_ifr ;

int macide_test_irq(ide_hwif_t *hwif)
{
 if (*ide_ifr & 0x20)
  return 1;
 return 0;
}
