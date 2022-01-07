
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_adma_chan {scalar_t__ pending; } ;
struct dma_chan {int dummy; } ;


 int iop_chan_append (struct iop_adma_chan*) ;
 struct iop_adma_chan* to_iop_adma_chan (struct dma_chan*) ;

__attribute__((used)) static void iop_adma_issue_pending(struct dma_chan *chan)
{
 struct iop_adma_chan *iop_chan = to_iop_adma_chan(chan);

 if (iop_chan->pending) {
  iop_chan->pending = 0;
  iop_chan_append(iop_chan);
 }
}
