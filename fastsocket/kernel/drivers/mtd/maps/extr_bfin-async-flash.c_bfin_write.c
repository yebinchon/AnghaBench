
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct map_info {scalar_t__ virt; scalar_t__ map_priv_1; } ;
struct async_state {int dummy; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 int SSYNC () ;
 int switch_back (struct async_state*) ;
 int switch_to_flash (struct async_state*) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void bfin_write(struct map_info *map, map_word d1, unsigned long ofs)
{
 struct async_state *state = (struct async_state *)map->map_priv_1;
 uint16_t d;

 d = d1.x[0];

 switch_to_flash(state);

 writew(d, map->virt + ofs);
 SSYNC();

 switch_back(state);
}
