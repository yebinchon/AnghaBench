
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int map_priv_2; } ;
typedef int ssize_t ;
typedef scalar_t__ caddr_t ;


 int DEBUG (int,char*,void*,unsigned long,int ) ;
 scalar_t__ DEV_REMOVED (struct map_info*) ;
 int memcpy_fromio (void*,scalar_t__,int ) ;

__attribute__((used)) static void pcmcia_copy_from(struct map_info *map, void *to, unsigned long from, ssize_t len)
{
 caddr_t win_base = (caddr_t)map->map_priv_2;

 if(DEV_REMOVED(map))
  return;

 DEBUG(3, "to = %p from = %lu len = %u", to, from, len);
 memcpy_fromio(to, win_base + from, len);
}
