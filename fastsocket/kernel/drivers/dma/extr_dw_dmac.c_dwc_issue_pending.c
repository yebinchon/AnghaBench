
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chan {int lock; int queue; } ;
struct dma_chan {int device; } ;


 int dwc_scan_descriptors (int ,struct dw_dma_chan*) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int to_dw_dma (int ) ;
 struct dw_dma_chan* to_dw_dma_chan (struct dma_chan*) ;

__attribute__((used)) static void dwc_issue_pending(struct dma_chan *chan)
{
 struct dw_dma_chan *dwc = to_dw_dma_chan(chan);

 spin_lock_bh(&dwc->lock);
 if (!list_empty(&dwc->queue))
  dwc_scan_descriptors(to_dw_dma(chan->device), dwc);
 spin_unlock_bh(&dwc->lock);
}
