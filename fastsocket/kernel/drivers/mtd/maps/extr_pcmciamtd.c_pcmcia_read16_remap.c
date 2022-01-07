
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct map_info {int dummy; } ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {int * x; TYPE_1__ member_0; } ;
typedef TYPE_2__ map_word ;
typedef int caddr_t ;


 int DEBUG (int,char*,unsigned long,int ,int ) ;
 int readw (int ) ;
 int remap_window (struct map_info*,unsigned long) ;

__attribute__((used)) static map_word pcmcia_read16_remap(struct map_info *map, unsigned long ofs)
{
 caddr_t addr;
 map_word d = {{0}};

 addr = remap_window(map, ofs);
 if(!addr)
  return d;

 d.x[0] = readw(addr);
 DEBUG(3, "ofs = 0x%08lx (%p) data = 0x%04x", ofs, addr, d.x[0]);
 return d;
}
