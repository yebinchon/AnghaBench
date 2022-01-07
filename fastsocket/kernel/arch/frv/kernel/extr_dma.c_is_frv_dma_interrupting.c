
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ioaddr; } ;


 int CSTR ;
 int __get_DMAC (unsigned long,int ) ;
 TYPE_1__* frv_dma_channels ;

int is_frv_dma_interrupting(int dma)
{
 unsigned long ioaddr = frv_dma_channels[dma].ioaddr;

 return __get_DMAC(ioaddr, CSTR) & (1 << 23);

}
