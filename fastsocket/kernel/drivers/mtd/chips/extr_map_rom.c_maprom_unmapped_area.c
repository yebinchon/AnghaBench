
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct map_info* priv; } ;
struct map_info {scalar_t__ virt; } ;



__attribute__((used)) static unsigned long maprom_unmapped_area(struct mtd_info *mtd,
       unsigned long len,
       unsigned long offset,
       unsigned long flags)
{
 struct map_info *map = mtd->priv;
 return (unsigned long) map->virt + offset;
}
