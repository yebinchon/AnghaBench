
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_bar_priv {int lock; } ;
struct nouveau_bar {int dummy; } ;


 int nv_wait (struct nv50_bar_priv*,int,int,int) ;
 int nv_warn (struct nv50_bar_priv*,char*) ;
 int nv_wr32 (struct nv50_bar_priv*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nv50_bar_flush(struct nouveau_bar *bar)
{
 struct nv50_bar_priv *priv = (void *)bar;
 unsigned long flags;
 spin_lock_irqsave(&priv->lock, flags);
 nv_wr32(priv, 0x00330c, 0x00000001);
 if (!nv_wait(priv, 0x00330c, 0x00000002, 0x00000000))
  nv_warn(priv, "flush timeout\n");
 spin_unlock_irqrestore(&priv->lock, flags);
}
