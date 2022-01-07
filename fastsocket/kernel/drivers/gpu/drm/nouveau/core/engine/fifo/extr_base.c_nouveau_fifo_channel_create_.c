
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_fifo_chan {size_t chid; int size; int user; int pushgpu; TYPE_3__* pushdma; } ;
struct nouveau_fifo {size_t min; size_t max; int lock; scalar_t__* channel; } ;
struct nouveau_dmaeng {int (* bind ) (struct nouveau_dmaeng*,struct nouveau_object*,TYPE_3__*,int *) ;} ;
struct nouveau_device {int pdev; } ;
struct TYPE_5__ {TYPE_1__* oclass; scalar_t__ engine; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct TYPE_4__ {int handle; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOENT ;
 int ENOSPC ;


 int ioremap (int,int) ;
 scalar_t__ nouveau_handle_ref (struct nouveau_object*,int) ;
 int nouveau_namedb_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,int *,int ,int,void**) ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 int nv_error (struct nouveau_fifo*,char*) ;
 scalar_t__ nv_object (struct nouveau_fifo_chan*) ;
 int pci_resource_start (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct nouveau_dmaeng*,struct nouveau_object*,TYPE_3__*,int *) ;

int
nouveau_fifo_channel_create_(struct nouveau_object *parent,
        struct nouveau_object *engine,
        struct nouveau_oclass *oclass,
        int bar, u32 addr, u32 size, u32 pushbuf,
        u64 engmask, int len, void **ptr)
{
 struct nouveau_device *device = nv_device(engine);
 struct nouveau_fifo *priv = (void *)engine;
 struct nouveau_fifo_chan *chan;
 struct nouveau_dmaeng *dmaeng;
 unsigned long flags;
 int ret;


 ret = nouveau_namedb_create_(parent, engine, oclass, 0, ((void*)0),
         engmask, len, ptr);
 chan = *ptr;
 if (ret)
  return ret;


 chan->pushdma = (void *)nouveau_handle_ref(parent, pushbuf);
 if (!chan->pushdma)
  return -ENOENT;

 dmaeng = (void *)chan->pushdma->base.engine;
 switch (chan->pushdma->base.oclass->handle) {
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 ret = dmaeng->bind(dmaeng, parent, chan->pushdma, &chan->pushgpu);
 if (ret)
  return ret;


 spin_lock_irqsave(&priv->lock, flags);
 for (chan->chid = priv->min; chan->chid < priv->max; chan->chid++) {
  if (!priv->channel[chan->chid]) {
   priv->channel[chan->chid] = nv_object(chan);
   break;
  }
 }
 spin_unlock_irqrestore(&priv->lock, flags);

 if (chan->chid == priv->max) {
  nv_error(priv, "no free channels\n");
  return -ENOSPC;
 }


 chan->user = ioremap(pci_resource_start(device->pdev, bar) + addr +
        (chan->chid * size), size);
 if (!chan->user)
  return -EFAULT;

 chan->size = size;
 return 0;
}
