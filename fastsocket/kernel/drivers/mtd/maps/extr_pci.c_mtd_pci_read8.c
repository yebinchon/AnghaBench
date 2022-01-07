
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_pci_info {scalar_t__ (* translate ) (struct map_pci_info*,unsigned long) ;scalar_t__ base; } ;
struct map_info {int dummy; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 int readb (scalar_t__) ;
 scalar_t__ stub1 (struct map_pci_info*,unsigned long) ;

__attribute__((used)) static map_word mtd_pci_read8(struct map_info *_map, unsigned long ofs)
{
 struct map_pci_info *map = (struct map_pci_info *)_map;
 map_word val;
 val.x[0]= readb(map->base + map->translate(map, ofs));

 return val;
}
