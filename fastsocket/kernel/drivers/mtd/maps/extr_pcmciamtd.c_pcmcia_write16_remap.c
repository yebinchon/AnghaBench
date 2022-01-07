
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {int dummy; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;
typedef int caddr_t ;


 int DEBUG (int,char*,unsigned long,int ,int ) ;
 int remap_window (struct map_info*,unsigned long) ;
 int writew (int ,int ) ;

__attribute__((used)) static void pcmcia_write16_remap(struct map_info *map, map_word d, unsigned long adr)
{
 caddr_t addr = remap_window(map, adr);
 if(!addr)
  return;

 DEBUG(3, "adr = 0x%08lx (%p)  data = 0x%04x", adr, addr, d.x[0]);
 writew(d.x[0], addr);
}
