
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {unsigned long ioaddr; } ;


 int CCTR ;
 int CSTR ;
 int ___set_DMAC (unsigned long,int ,int ) ;
 int __get_DMAC (unsigned long,int ) ;
 TYPE_1__* frv_dma_channels ;

void frv_dma_status_clear(int dma)
{
 unsigned long ioaddr = frv_dma_channels[dma].ioaddr;
 uint32_t cctr;
 ___set_DMAC(ioaddr, CSTR, 0);

 cctr = __get_DMAC(ioaddr, CCTR);
}
