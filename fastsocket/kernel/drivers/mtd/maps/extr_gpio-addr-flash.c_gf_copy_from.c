
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
 int memcpy_fromio (void*,scalar_t__,unsigned long) ;

__attribute__((used)) static void gf_copy_from(struct map_info *map, void *to, unsigned long from, ssize_t len)
{
 struct async_state *state = gf_map_info_to_state(map);

 gf_set_gpios(state, from);


 BUG_ON(!((from + len) % state->win_size <= (from + len)));


 memcpy_fromio(to, map->virt + (from % state->win_size), len);
}
