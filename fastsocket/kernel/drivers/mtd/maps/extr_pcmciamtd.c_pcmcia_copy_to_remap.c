
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmciamtd_dev {unsigned long win_size; } ;
struct map_info {scalar_t__ map_priv_1; } ;
typedef int ssize_t ;
typedef void const* caddr_t ;


 int DEBUG (int,char*,void const*,void const*,int) ;
 int memcpy_toio (void const*,void const*,int) ;
 void* remap_window (struct map_info*,unsigned long) ;

__attribute__((used)) static void pcmcia_copy_to_remap(struct map_info *map, unsigned long to, const void *from, ssize_t len)
{
 struct pcmciamtd_dev *dev = (struct pcmciamtd_dev *)map->map_priv_1;
 unsigned long win_size = dev->win_size;

 DEBUG(3, "to = %lu from = %p len = %u", to, from, len);
 while(len) {
  int towrite = win_size - (to & (win_size-1));
  caddr_t addr;

  if(towrite > len)
   towrite = len;

  addr = remap_window(map, to);
  if(!addr)
   return;

  DEBUG(4, "memcpy from %p to %p len = %d", from, addr, towrite);
  memcpy_toio(addr, from, towrite);
  len -= towrite;
  to += towrite;
  from += towrite;
 }
}
