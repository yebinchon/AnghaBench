
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_chan_common {int dummy; } ;
struct ioat2_dma_chan {struct ioat_chan_common base; } ;


 int __cleanup (struct ioat2_dma_chan*,unsigned long) ;
 int __ioat2_restart_chan (struct ioat2_dma_chan*) ;
 int ioat2_quiesce (struct ioat_chan_common*,int ) ;
 scalar_t__ ioat_cleanup_preamble (struct ioat_chan_common*,unsigned long*) ;

__attribute__((used)) static void ioat2_restart_channel(struct ioat2_dma_chan *ioat)
{
 struct ioat_chan_common *chan = &ioat->base;
 unsigned long phys_complete;

 ioat2_quiesce(chan, 0);
 if (ioat_cleanup_preamble(chan, &phys_complete))
  __cleanup(ioat, phys_complete);

 __ioat2_restart_chan(ioat);
}
