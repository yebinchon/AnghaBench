
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
 int readw (scalar_t__) ;

__attribute__((used)) static map_word gf_read(struct map_info *map, unsigned long ofs)
{
 struct async_state *state = gf_map_info_to_state(map);
 uint16_t word;
 map_word test;

 gf_set_gpios(state, ofs);

 word = readw(map->virt + (ofs % state->win_size));
 test.x[0] = word;
 return test;
}
