
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nv50_instobj_priv {TYPE_1__* mem; } ;
struct nv50_instmem_priv {int addr; int lock; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_2__ {int offset; } ;


 int nv_rd32 (struct nv50_instmem_priv*,int) ;
 int nv_wr32 (struct nv50_instmem_priv*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32
nv50_instobj_rd32(struct nouveau_object *object, u64 offset)
{
 struct nv50_instmem_priv *priv = (void *)object->engine;
 struct nv50_instobj_priv *node = (void *)object;
 unsigned long flags;
 u64 base = (node->mem->offset + offset) & 0xffffff00000ULL;
 u64 addr = (node->mem->offset + offset) & 0x000000fffffULL;
 u32 data;

 spin_lock_irqsave(&priv->lock, flags);
 if (unlikely(priv->addr != base)) {
  nv_wr32(priv, 0x001700, base >> 16);
  priv->addr = base;
 }
 data = nv_rd32(priv, 0x700000 + addr);
 spin_unlock_irqrestore(&priv->lock, flags);
 return data;
}
