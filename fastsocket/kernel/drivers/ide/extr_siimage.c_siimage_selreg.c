
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int host_flags; int channel; scalar_t__ hwif_data; } ;
typedef TYPE_1__ ide_hwif_t ;


 int IDE_HFLAG_MMIO ;

__attribute__((used)) static unsigned long siimage_selreg(ide_hwif_t *hwif, int r)
{
 unsigned long base = (unsigned long)hwif->hwif_data;

 base += 0xA0 + r;
 if (hwif->host_flags & IDE_HFLAG_MMIO)
  base += hwif->channel << 6;
 else
  base += hwif->channel << 4;
 return base;
}
