
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_pci_info {int dummy; } ;



__attribute__((used)) static unsigned long
intel_dc21285_translate(struct map_pci_info *map, unsigned long ofs)
{
 return ofs & 0x00ffffc0 ? ofs : (ofs ^ (1 << 5));
}
