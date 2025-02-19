
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ioat_chan_common {int dummy; } ;
struct ioat2_dma_chan {struct ioat_chan_common base; } ;


 int __cleanup (struct ioat2_dma_chan*,unsigned long) ;
 int __ioat2_restart_chan (struct ioat2_dma_chan*) ;
 int cpu_relax () ;
 int ioat_chansts (struct ioat_chan_common*) ;
 scalar_t__ ioat_cleanup_preamble (struct ioat_chan_common*,unsigned long*) ;
 int ioat_suspend (struct ioat_chan_common*) ;
 scalar_t__ is_ioat_active (int ) ;
 scalar_t__ is_ioat_idle (int ) ;

__attribute__((used)) static void ioat3_restart_channel(struct ioat2_dma_chan *ioat)
{
 struct ioat_chan_common *chan = &ioat->base;
 unsigned long phys_complete;
 u32 status;

 status = ioat_chansts(chan);
 if (is_ioat_active(status) || is_ioat_idle(status))
  ioat_suspend(chan);
 while (is_ioat_active(status) || is_ioat_idle(status)) {
  status = ioat_chansts(chan);
  cpu_relax();
 }

 if (ioat_cleanup_preamble(chan, &phys_complete))
  __cleanup(ioat, phys_complete);

 __ioat2_restart_chan(ioat);
}
