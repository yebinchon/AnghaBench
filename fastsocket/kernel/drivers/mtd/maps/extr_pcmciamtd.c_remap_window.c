
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int window_handle_t ;
struct pcmciamtd_dev {int win_size; unsigned long offset; int * win_base; int p_dev; } ;
struct map_info {int map_priv_2; scalar_t__ map_priv_1; } ;
struct TYPE_3__ {unsigned long CardOffset; scalar_t__ Page; } ;
typedef TYPE_1__ memreq_t ;
typedef int * caddr_t ;


 int DEBUG (int,char*,...) ;
 int MapMemPage ;
 int cs_error (int ,int ,int) ;
 int pcmcia_dev_present (int ) ;
 int pcmcia_map_mem_page (int ,TYPE_1__*) ;

__attribute__((used)) static caddr_t remap_window(struct map_info *map, unsigned long to)
{
 struct pcmciamtd_dev *dev = (struct pcmciamtd_dev *)map->map_priv_1;
 window_handle_t win = (window_handle_t)map->map_priv_2;
 memreq_t mrq;
 int ret;

 if (!pcmcia_dev_present(dev->p_dev)) {
  DEBUG(1, "device removed");
  return 0;
 }

 mrq.CardOffset = to & ~(dev->win_size-1);
 if(mrq.CardOffset != dev->offset) {
  DEBUG(2, "Remapping window from 0x%8.8x to 0x%8.8x",
        dev->offset, mrq.CardOffset);
  mrq.Page = 0;
  ret = pcmcia_map_mem_page(win, &mrq);
  if (ret != 0) {
   cs_error(dev->p_dev, MapMemPage, ret);
   return ((void*)0);
  }
  dev->offset = mrq.CardOffset;
 }
 return dev->win_base + (to & (dev->win_size-1));
}
