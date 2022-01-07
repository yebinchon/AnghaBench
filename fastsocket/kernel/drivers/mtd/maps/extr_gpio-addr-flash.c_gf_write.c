
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct map_info {scalar_t__ virt; } ;
struct async_state {unsigned long win_size; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 struct async_state* gf_map_info_to_state (struct map_info*) ;
 int gf_set_gpios (struct async_state*,unsigned long) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void gf_write(struct map_info *map, map_word d1, unsigned long ofs)
{
 struct async_state *state = gf_map_info_to_state(map);
 uint16_t d;

 gf_set_gpios(state, ofs);

 d = d1.x[0];
 writew(d, map->virt + (ofs % state->win_size));
}
