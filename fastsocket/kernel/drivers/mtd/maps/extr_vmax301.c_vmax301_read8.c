
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {scalar_t__ map_priv_2; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 unsigned long WINDOW_MASK ;
 int readb (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmax301_page (struct map_info*,unsigned long) ;
 int vmax301_spin ;

__attribute__((used)) static map_word vmax301_read8(struct map_info *map, unsigned long ofs)
{
 map_word ret;
 spin_lock(&vmax301_spin);
 vmax301_page(map, ofs);
 ret.x[0] = readb(map->map_priv_2 + (ofs & WINDOW_MASK));
 spin_unlock(&vmax301_spin);
 return ret;
}
