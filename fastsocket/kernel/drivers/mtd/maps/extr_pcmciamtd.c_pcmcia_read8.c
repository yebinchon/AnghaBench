
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct map_info {int map_priv_2; } ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {int * x; TYPE_1__ member_0; } ;
typedef TYPE_2__ map_word ;
typedef scalar_t__ caddr_t ;


 int DEBUG (int,char*,unsigned long,scalar_t__,int ) ;
 scalar_t__ DEV_REMOVED (struct map_info*) ;
 int readb (scalar_t__) ;

__attribute__((used)) static map_word pcmcia_read8(struct map_info *map, unsigned long ofs)
{
 caddr_t win_base = (caddr_t)map->map_priv_2;
 map_word d = {{0}};

 if(DEV_REMOVED(map))
  return d;

 d.x[0] = readb(win_base + ofs);
 DEBUG(3, "ofs = 0x%08lx (%p) data = 0x%02x", ofs, win_base + ofs, d.x[0]);
 return d;
}
