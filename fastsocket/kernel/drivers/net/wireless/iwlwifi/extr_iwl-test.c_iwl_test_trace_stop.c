
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dma_addr; scalar_t__ cpu_addr; int tsize; int enabled; } ;
struct iwl_test {TYPE_2__ trace; TYPE_1__* trans; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int ,int ,scalar_t__,scalar_t__) ;
 int iwl_test_trace_clear (struct iwl_test*) ;

__attribute__((used)) static void iwl_test_trace_stop(struct iwl_test *tst)
{
 if (!tst->trace.enabled)
  return;

 if (tst->trace.cpu_addr && tst->trace.dma_addr)
  dma_free_coherent(tst->trans->dev,
      tst->trace.tsize,
      tst->trace.cpu_addr,
      tst->trace.dma_addr);

 iwl_test_trace_clear(tst);
}
