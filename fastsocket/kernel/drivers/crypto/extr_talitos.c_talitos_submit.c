
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct talitos_request {void (* callback ) (struct device*,struct talitos_desc*,void*,int) ;int dma_desc; struct talitos_desc* desc; void* context; } ;
struct talitos_private {int num_channels; int fifo_len; TYPE_1__* chan; scalar_t__ reg; int last_chan; } ;
struct talitos_desc {int hdr; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int head; int head_lock; struct talitos_request* fifo; int submit_count; } ;


 int DESC_HDR_DONE_NOTIFY ;
 int DMA_BIDIRECTIONAL ;
 int EAGAIN ;
 int EINPROGRESS ;
 scalar_t__ TALITOS_FF (unsigned long) ;
 scalar_t__ TALITOS_FF_LO (unsigned long) ;
 int atomic_inc_not_zero (int *) ;
 int atomic_inc_return (int *) ;
 int cpu_to_be32 (int ) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int dma_map_single (struct device*,struct talitos_desc*,int,int ) ;
 int lower_32_bits (int ) ;
 int out_be32 (scalar_t__,int ) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int upper_32_bits (int ) ;
 int wmb () ;

__attribute__((used)) static int talitos_submit(struct device *dev, struct talitos_desc *desc,
     void (*callback)(struct device *dev,
        struct talitos_desc *desc,
        void *context, int error),
     void *context)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 struct talitos_request *request;
 unsigned long flags, ch;
 int head;


 desc->hdr |= DESC_HDR_DONE_NOTIFY;


 ch = atomic_inc_return(&priv->last_chan) & (priv->num_channels - 1);

 spin_lock_irqsave(&priv->chan[ch].head_lock, flags);

 if (!atomic_inc_not_zero(&priv->chan[ch].submit_count)) {

  spin_unlock_irqrestore(&priv->chan[ch].head_lock, flags);
  return -EAGAIN;
 }

 head = priv->chan[ch].head;
 request = &priv->chan[ch].fifo[head];


 request->dma_desc = dma_map_single(dev, desc, sizeof(*desc),
        DMA_BIDIRECTIONAL);
 request->callback = callback;
 request->context = context;


 priv->chan[ch].head = (priv->chan[ch].head + 1) & (priv->fifo_len - 1);

 smp_wmb();
 request->desc = desc;


 wmb();
 out_be32(priv->reg + TALITOS_FF(ch),
   cpu_to_be32(upper_32_bits(request->dma_desc)));
 out_be32(priv->reg + TALITOS_FF_LO(ch),
   cpu_to_be32(lower_32_bits(request->dma_desc)));

 spin_unlock_irqrestore(&priv->chan[ch].head_lock, flags);

 return -EINPROGRESS;
}
