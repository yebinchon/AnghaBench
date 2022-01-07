
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int cached; int phys; } ;
typedef int ssize_t ;


 int flush_ioremap_region (int ,int ,unsigned long,int ) ;

__attribute__((used)) static void pxa2xx_map_inval_cache(struct map_info *map, unsigned long from,
          ssize_t len)
{
 flush_ioremap_region(map->phys, map->cached, from, len);
}
