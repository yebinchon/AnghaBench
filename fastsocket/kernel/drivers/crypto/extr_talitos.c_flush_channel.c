
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct talitos_request {int context; TYPE_2__* desc; int (* callback ) (struct device*,TYPE_2__*,int ,int) ;int dma_desc; } ;
struct talitos_private {int fifo_len; TYPE_1__* chan; } ;
struct talitos_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int hdr; } ;
struct TYPE_3__ {int tail; int tail_lock; int submit_count; struct talitos_request* fifo; } ;


 int DESC_HDR_DONE ;
 int DMA_BIDIRECTIONAL ;
 int atomic_dec (int *) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int rmb () ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct device*,TYPE_2__*,int ,int) ;

__attribute__((used)) static void flush_channel(struct device *dev, int ch, int error, int reset_ch)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 struct talitos_request *request, saved_req;
 unsigned long flags;
 int tail, status;

 spin_lock_irqsave(&priv->chan[ch].tail_lock, flags);

 tail = priv->chan[ch].tail;
 while (priv->chan[ch].fifo[tail].desc) {
  request = &priv->chan[ch].fifo[tail];


  rmb();
  if ((request->desc->hdr & DESC_HDR_DONE) == DESC_HDR_DONE)
   status = 0;
  else
   if (!error)
    break;
   else
    status = error;

  dma_unmap_single(dev, request->dma_desc,
     sizeof(struct talitos_desc),
     DMA_BIDIRECTIONAL);


  saved_req.desc = request->desc;
  saved_req.callback = request->callback;
  saved_req.context = request->context;


  smp_wmb();
  request->desc = ((void*)0);


  priv->chan[ch].tail = (tail + 1) & (priv->fifo_len - 1);

  spin_unlock_irqrestore(&priv->chan[ch].tail_lock, flags);

  atomic_dec(&priv->chan[ch].submit_count);

  saved_req.callback(dev, saved_req.desc, saved_req.context,
       status);

  if (error && !reset_ch && status == error)
   return;
  spin_lock_irqsave(&priv->chan[ch].tail_lock, flags);
  tail = priv->chan[ch].tail;
 }

 spin_unlock_irqrestore(&priv->chan[ch].tail_lock, flags);
}
