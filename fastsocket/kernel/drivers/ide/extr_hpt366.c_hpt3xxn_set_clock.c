
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {unsigned long extra_base; } ;
typedef TYPE_1__ ide_hwif_t ;


 int inb (unsigned long) ;
 int outb (int,unsigned long) ;

__attribute__((used)) static void hpt3xxn_set_clock(ide_hwif_t *hwif, u8 mode)
{
 unsigned long base = hwif->extra_base;
 u8 scr2 = inb(base + 0x6b);

 if ((scr2 & 0x7f) == mode)
  return;


 outb(0x80, base + 0x63);
 outb(0x80, base + 0x67);


 outb(mode, base + 0x6b);
 outb(0xc0, base + 0x69);





 outb(inb(base + 0x60) | 0x32, base + 0x60);
 outb(inb(base + 0x64) | 0x32, base + 0x64);


 outb(0x00, base + 0x69);


 outb(0x00, base + 0x63);
 outb(0x00, base + 0x67);
}
