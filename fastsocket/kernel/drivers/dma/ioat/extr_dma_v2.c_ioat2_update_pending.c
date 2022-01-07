
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat2_dma_chan {int dummy; } ;


 int __ioat2_issue_pending (struct ioat2_dma_chan*) ;
 scalar_t__ ioat2_ring_pending (struct ioat2_dma_chan*) ;
 scalar_t__ ioat_pending_level ;

__attribute__((used)) static void ioat2_update_pending(struct ioat2_dma_chan *ioat)
{
 if (ioat2_ring_pending(ioat) > ioat_pending_level)
  __ioat2_issue_pending(ioat);
}
