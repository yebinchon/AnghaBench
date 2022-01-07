
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {scalar_t__ virt; } ;
struct async_state {unsigned long win_size; } ;
typedef unsigned long ssize_t ;


 int BUG_ON (int) ;
 struct async_state* gf_map_info_to_state (struct map_info*) ;
 int gf_set_gpios (struct async_state*,unsigned long) ;
 int memcpy_toio (scalar_t__,void const*,unsigned long) ;

__attribute__((used)) static void gf_copy_to(struct map_info *map, unsigned long to, const void *from, ssize_t len)
{
 struct async_state *state = gf_map_info_to_state(map);

 gf_set_gpios(state, to);


 BUG_ON(!((to + len) % state->win_size <= (to + len)));


 memcpy_toio(map->virt + (to % state->win_size), from, len);
}
