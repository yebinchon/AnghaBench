
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {unsigned long map_priv_1; } ;


 unsigned long WINDOW_SHIFT ;
 int __vmax301_page (struct map_info*,unsigned long) ;

__attribute__((used)) static inline void vmax301_page(struct map_info *map,
      unsigned long ofs)
{
 unsigned long page = (ofs >> WINDOW_SHIFT);
 if (map->map_priv_1 != page)
  __vmax301_page(map, page);
}
