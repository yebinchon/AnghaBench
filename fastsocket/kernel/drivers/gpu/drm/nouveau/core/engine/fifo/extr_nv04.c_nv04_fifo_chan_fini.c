
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ramfc_desc {unsigned long long bits; unsigned long long regs; unsigned long long ctxs; int ctxp; int regp; } ;
struct TYPE_3__ {int max; int lock; } ;
struct nv04_fifo_priv {TYPE_1__ base; struct ramfc_desc* ramfc_desc; struct nouveau_gpuobj* ramfc; } ;
struct TYPE_4__ {int chid; } ;
struct nv04_fifo_chan {int ramfc; TYPE_2__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct nouveau_gpuobj {int dummy; } ;


 int NV03_PFIFO_CACHE1_GET ;
 int NV03_PFIFO_CACHE1_PUSH0 ;
 int NV03_PFIFO_CACHE1_PUSH1 ;
 int NV03_PFIFO_CACHE1_PUT ;
 int NV03_PFIFO_CACHES ;
 int NV04_PFIFO_CACHE1_DMA_PUSH ;
 int NV04_PFIFO_CACHE1_PULL0 ;
 int NV04_PFIFO_MODE ;
 int nouveau_fifo_channel_fini (TYPE_2__*,int) ;
 int nv_mask (struct nv04_fifo_priv*,int ,int,int ) ;
 int nv_rd32 (struct nv04_fifo_priv*,int ) ;
 int nv_ro32 (struct nouveau_gpuobj*,int) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;
 int nv_wr32 (struct nv04_fifo_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
nv04_fifo_chan_fini(struct nouveau_object *object, bool suspend)
{
 struct nv04_fifo_priv *priv = (void *)object->engine;
 struct nv04_fifo_chan *chan = (void *)object;
 struct nouveau_gpuobj *fctx = priv->ramfc;
 struct ramfc_desc *c;
 unsigned long flags;
 u32 data = chan->ramfc;
 u32 chid;


 spin_lock_irqsave(&priv->base.lock, flags);
 nv_wr32(priv, NV03_PFIFO_CACHES, 0);


 chid = nv_rd32(priv, NV03_PFIFO_CACHE1_PUSH1) & priv->base.max;
 if (chid == chan->base.chid) {
  nv_mask(priv, NV04_PFIFO_CACHE1_DMA_PUSH, 0x00000001, 0);
  nv_wr32(priv, NV03_PFIFO_CACHE1_PUSH0, 0);
  nv_mask(priv, NV04_PFIFO_CACHE1_PULL0, 0x00000001, 0);

  c = priv->ramfc_desc;
  do {
   u32 rm = ((1ULL << c->bits) - 1) << c->regs;
   u32 cm = ((1ULL << c->bits) - 1) << c->ctxs;
   u32 rv = (nv_rd32(priv, c->regp) & rm) >> c->regs;
   u32 cv = (nv_ro32(fctx, c->ctxp + data) & ~cm);
   nv_wo32(fctx, c->ctxp + data, cv | (rv << c->ctxs));
  } while ((++c)->bits);

  c = priv->ramfc_desc;
  do {
   nv_wr32(priv, c->regp, 0x00000000);
  } while ((++c)->bits);

  nv_wr32(priv, NV03_PFIFO_CACHE1_GET, 0);
  nv_wr32(priv, NV03_PFIFO_CACHE1_PUT, 0);
  nv_wr32(priv, NV03_PFIFO_CACHE1_PUSH1, priv->base.max);
  nv_wr32(priv, NV03_PFIFO_CACHE1_PUSH0, 1);
  nv_wr32(priv, NV04_PFIFO_CACHE1_PULL0, 1);
 }


 nv_mask(priv, NV04_PFIFO_MODE, 1 << chan->base.chid, 0);
 nv_wr32(priv, NV03_PFIFO_CACHES, 1);
 spin_unlock_irqrestore(&priv->base.lock, flags);

 return nouveau_fifo_channel_fini(&chan->base, suspend);
}
