
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat2_dma_chan {int ring_lock; } ;
struct dma_chan {int dummy; } ;


 int __ioat2_issue_pending (struct ioat2_dma_chan*) ;
 scalar_t__ ioat2_ring_pending (struct ioat2_dma_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ioat2_dma_chan* to_ioat2_chan (struct dma_chan*) ;

void ioat2_issue_pending(struct dma_chan *c)
{
 struct ioat2_dma_chan *ioat = to_ioat2_chan(c);

 if (ioat2_ring_pending(ioat)) {
  spin_lock_bh(&ioat->ring_lock);
  __ioat2_issue_pending(ioat);
  spin_unlock_bh(&ioat->ring_lock);
 }
}
