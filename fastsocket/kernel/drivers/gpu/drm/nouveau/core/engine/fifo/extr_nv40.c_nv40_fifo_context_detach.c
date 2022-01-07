
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int max; int lock; } ;
struct nv04_fifo_priv {TYPE_2__ base; int ramfc; } ;
struct TYPE_3__ {int chid; } ;
struct nv04_fifo_chan {int ramfc; TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int EINVAL ;



 int nv_engidx (scalar_t__) ;
 int nv_mask (struct nv04_fifo_priv*,int,int,int) ;
 int nv_rd32 (struct nv04_fifo_priv*,int) ;
 int nv_wo32 (int ,int,int) ;
 int nv_wr32 (struct nv04_fifo_priv*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
nv40_fifo_context_detach(struct nouveau_object *parent, bool suspend,
    struct nouveau_object *engctx)
{
 struct nv04_fifo_priv *priv = (void *)parent->engine;
 struct nv04_fifo_chan *chan = (void *)parent;
 unsigned long flags;
 u32 reg, ctx;

 switch (nv_engidx(engctx->engine)) {
 case 128:
  return 0;
 case 130:
  reg = 0x32e0;
  ctx = 0x38;
  break;
 case 129:
  reg = 0x330c;
  ctx = 0x54;
  break;
 default:
  return -EINVAL;
 }

 spin_lock_irqsave(&priv->base.lock, flags);
 nv_mask(priv, 0x002500, 0x00000001, 0x00000000);

 if ((nv_rd32(priv, 0x003204) & priv->base.max) == chan->base.chid)
  nv_wr32(priv, reg, 0x00000000);
 nv_wo32(priv->ramfc, chan->ramfc + ctx, 0x00000000);

 nv_mask(priv, 0x002500, 0x00000001, 0x00000001);
 spin_unlock_irqrestore(&priv->base.lock, flags);
 return 0;
}
