
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct map_info {int map_priv_2; } ;
typedef scalar_t__ caddr_t ;


 int DEBUG (int,char*,unsigned long,scalar_t__,int ) ;
 scalar_t__ DEV_REMOVED (struct map_info*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void pcmcia_write8(struct map_info *map, u8 d, unsigned long adr)
{
 caddr_t win_base = (caddr_t)map->map_priv_2;

 if(DEV_REMOVED(map))
  return;

 DEBUG(3, "adr = 0x%08lx (%p)  data = 0x%02x", adr, win_base + adr, d);
 writeb(d, win_base + adr);
}
