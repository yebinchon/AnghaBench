
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int lock; } ;
struct nv04_fifo_priv {TYPE_1__ base; } ;
struct TYPE_4__ {int chid; } ;
struct nv04_fifo_chan {TYPE_2__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int NV04_PFIFO_MODE ;
 int nouveau_fifo_channel_init (TYPE_2__*) ;
 int nv_mask (struct nv04_fifo_priv*,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
nv04_fifo_chan_init(struct nouveau_object *object)
{
 struct nv04_fifo_priv *priv = (void *)object->engine;
 struct nv04_fifo_chan *chan = (void *)object;
 u32 mask = 1 << chan->base.chid;
 unsigned long flags;
 int ret;

 ret = nouveau_fifo_channel_init(&chan->base);
 if (ret)
  return ret;

 spin_lock_irqsave(&priv->base.lock, flags);
 nv_mask(priv, NV04_PFIFO_MODE, mask, mask);
 spin_unlock_irqrestore(&priv->base.lock, flags);
 return 0;
}
