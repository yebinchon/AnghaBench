
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reg_base; } ;
struct ioat2_dma_chan {TYPE_1__ base; } ;


 scalar_t__ IOAT_CHANCTRL_OFFSET ;
 int IOAT_CHANCTRL_RUN ;
 int ioat2_cleanup (struct ioat2_dma_chan*) ;
 int writew (int ,scalar_t__) ;

void ioat2_cleanup_tasklet(unsigned long data)
{
 struct ioat2_dma_chan *ioat = (void *) data;

 ioat2_cleanup(ioat);
 writew(IOAT_CHANCTRL_RUN, ioat->base.reg_base + IOAT_CHANCTRL_OFFSET);
}
