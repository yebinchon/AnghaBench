
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {scalar_t__ map_priv_2; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 unsigned long WINDOW_MASK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmax301_page (struct map_info*,unsigned long) ;
 int vmax301_spin ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void vmax301_write8(struct map_info *map, map_word d, unsigned long adr)
{
 spin_lock(&vmax301_spin);
 vmax301_page(map, adr);
 writeb(d.x[0], map->map_priv_2 + (adr & WINDOW_MASK));
 spin_unlock(&vmax301_spin);
}
