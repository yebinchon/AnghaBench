
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {unsigned long map_priv_1; scalar_t__ map_priv_2; } ;


 scalar_t__ WINDOW_LENGTH ;
 int writew (unsigned long,scalar_t__) ;

__attribute__((used)) static void __vmax301_page(struct map_info *map, unsigned long page)
{
 writew(page, map->map_priv_2 - WINDOW_LENGTH);
 map->map_priv_1 = page;
}
