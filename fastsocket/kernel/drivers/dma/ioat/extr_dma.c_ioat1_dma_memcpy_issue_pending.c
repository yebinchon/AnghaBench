
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_dma_chan {scalar_t__ pending; int desc_lock; } ;
struct dma_chan {int dummy; } ;


 int __ioat1_dma_memcpy_issue_pending (struct ioat_dma_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ioat_dma_chan* to_ioat_chan (struct dma_chan*) ;

__attribute__((used)) static void ioat1_dma_memcpy_issue_pending(struct dma_chan *chan)
{
 struct ioat_dma_chan *ioat = to_ioat_chan(chan);

 if (ioat->pending > 0) {
  spin_lock_bh(&ioat->desc_lock);
  __ioat1_dma_memcpy_issue_pending(ioat);
  spin_unlock_bh(&ioat->desc_lock);
 }
}
