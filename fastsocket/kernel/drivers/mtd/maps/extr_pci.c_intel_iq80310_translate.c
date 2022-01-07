
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_pci_info {scalar_t__ base; } ;


 int writel (int,scalar_t__) ;

__attribute__((used)) static unsigned long
intel_iq80310_translate(struct map_pci_info *map, unsigned long ofs)
{
 unsigned long page_addr = ofs & 0x00400000;





 if (page_addr) {
  writel(0x00000008, map->base + 0x1558);
  writel(0x00000000, map->base + 0x1550);
 } else {
  writel(0x00000007, map->base + 0x1558);
  writel(0x00800000, map->base + 0x1550);
  ofs += 0x00800000;
 }

 return ofs;
}
