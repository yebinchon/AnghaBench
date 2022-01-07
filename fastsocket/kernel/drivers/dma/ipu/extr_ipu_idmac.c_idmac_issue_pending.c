
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu {int lock; } ;
struct idmac_channel {int active_buffer; } ;
struct idmac {int dummy; } ;
struct dma_chan {int chan_id; int device; } ;


 int ipu_select_buffer (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct idmac* to_idmac (int ) ;
 struct idmac_channel* to_idmac_chan (struct dma_chan*) ;
 struct ipu* to_ipu (struct idmac*) ;

__attribute__((used)) static void idmac_issue_pending(struct dma_chan *chan)
{
 struct idmac_channel *ichan = to_idmac_chan(chan);
 struct idmac *idmac = to_idmac(chan->device);
 struct ipu *ipu = to_ipu(idmac);
 unsigned long flags;


 spin_lock_irqsave(&ipu->lock, flags);
 ipu_select_buffer(chan->chan_id, ichan->active_buffer);
 spin_unlock_irqrestore(&ipu->lock, flags);







}
