
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int map_priv_2; } ;
typedef int ssize_t ;
typedef scalar_t__ caddr_t ;


 int DEBUG (int,char*,unsigned long,void const*,int ) ;
 scalar_t__ DEV_REMOVED (struct map_info*) ;
 int memcpy_toio (scalar_t__,void const*,int ) ;

__attribute__((used)) static void pcmcia_copy_to(struct map_info *map, unsigned long to, const void *from, ssize_t len)
{
 caddr_t win_base = (caddr_t)map->map_priv_2;

 if(DEV_REMOVED(map))
  return;

 DEBUG(3, "to = %lu from = %p len = %u", to, from, len);
 memcpy_toio(win_base + to, from, len);
}
