
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_vmmgr_priv {int lock; } ;
struct nouveau_subdev {int dummy; } ;


 scalar_t__ nouveau_vmmgr (struct nouveau_subdev*) ;
 int nv_error (struct nouveau_subdev*,char*,int) ;
 int nv_wait (struct nouveau_subdev*,int,int,int) ;
 int nv_wr32 (struct nouveau_subdev*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
nv50_vm_flush_engine(struct nouveau_subdev *subdev, int engine)
{
 struct nv50_vmmgr_priv *priv = (void *)nouveau_vmmgr(subdev);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 nv_wr32(subdev, 0x100c80, (engine << 16) | 1);
 if (!nv_wait(subdev, 0x100c80, 0x00000001, 0x00000000))
  nv_error(subdev, "vm flush timeout: engine %d\n", engine);
 spin_unlock_irqrestore(&priv->lock, flags);
}
