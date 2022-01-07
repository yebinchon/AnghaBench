
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reg_base; } ;
struct ioat_dma_chan {TYPE_1__ base; } ;


 scalar_t__ IOAT_CHANCTRL_OFFSET ;
 int IOAT_CHANCTRL_RUN ;
 int ioat1_cleanup (struct ioat_dma_chan*) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void ioat1_cleanup_tasklet(unsigned long data)
{
 struct ioat_dma_chan *chan = (void *)data;

 ioat1_cleanup(chan);
 writew(IOAT_CHANCTRL_RUN, chan->base.reg_base + IOAT_CHANCTRL_OFFSET);
}
