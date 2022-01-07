
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {scalar_t__ virt; scalar_t__ map_priv_1; } ;
struct async_state {int dummy; } ;
typedef int ssize_t ;


 int memcpy (void*,scalar_t__,int ) ;
 int switch_back (struct async_state*) ;
 int switch_to_flash (struct async_state*) ;

__attribute__((used)) static void bfin_copy_from(struct map_info *map, void *to, unsigned long from, ssize_t len)
{
 struct async_state *state = (struct async_state *)map->map_priv_1;

 switch_to_flash(state);

 memcpy(to, map->virt + from, len);

 switch_back(state);
}
