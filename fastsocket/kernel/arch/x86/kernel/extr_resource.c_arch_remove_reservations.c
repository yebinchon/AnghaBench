
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; scalar_t__ start; } ;


 scalar_t__ BIOS_END ;
 int BIOS_ROM_BASE ;
 int BIOS_ROM_END ;
 int IORESOURCE_MEM ;
 int remove_e820_regions (struct resource*) ;
 int resource_clip (struct resource*,int ,int ) ;

void arch_remove_reservations(struct resource *avail)
{

 if (avail->flags & IORESOURCE_MEM) {
  if (avail->start < BIOS_END)
   avail->start = BIOS_END;
  resource_clip(avail, BIOS_ROM_BASE, BIOS_ROM_END);

  remove_e820_regions(avail);
 }
}
