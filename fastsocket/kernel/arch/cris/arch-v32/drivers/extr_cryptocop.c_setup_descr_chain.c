
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryptocop_dma_desc {struct cryptocop_dma_desc* next; TYPE_1__* dma_descr; } ;
typedef int dma_descr_data ;
struct TYPE_2__ {int * next; } ;


 int DEBUG (int ) ;
 int printk (char*) ;
 scalar_t__ virt_to_phys (TYPE_1__*) ;

__attribute__((used)) static void setup_descr_chain(struct cryptocop_dma_desc *cd)
{
 DEBUG(printk("setup_descr_chain: entering\n"));
 while (cd) {
  if (cd->next) {
   cd->dma_descr->next = (dma_descr_data*)virt_to_phys(cd->next->dma_descr);
  } else {
   cd->dma_descr->next = ((void*)0);
  }
  cd = cd->next;
 }
 DEBUG(printk("setup_descr_chain: exit\n"));
}
