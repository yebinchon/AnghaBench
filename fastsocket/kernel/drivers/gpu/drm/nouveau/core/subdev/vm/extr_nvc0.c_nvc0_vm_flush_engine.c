
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvc0_vmmgr_priv {int lock; } ;
struct nouveau_subdev {int dummy; } ;


 scalar_t__ nouveau_vmmgr (struct nouveau_subdev*) ;
 int nv_error (struct nouveau_subdev*,char*,int ,int) ;
 int nv_rd32 (struct nouveau_subdev*,int) ;
 int nv_wait (struct nouveau_subdev*,int,int,int) ;
 int nv_wait_ne (struct nouveau_subdev*,int,int,int) ;
 int nv_wr32 (struct nouveau_subdev*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
nvc0_vm_flush_engine(struct nouveau_subdev *subdev, u64 addr, int type)
{
 struct nvc0_vmmgr_priv *priv = (void *)nouveau_vmmgr(subdev);
 unsigned long flags;




 spin_lock_irqsave(&priv->lock, flags);
 if (!nv_wait_ne(subdev, 0x100c80, 0x00ff0000, 0x00000000)) {
  nv_error(subdev, "vm timeout 0: 0x%08x %d\n",
    nv_rd32(subdev, 0x100c80), type);
 }

 nv_wr32(subdev, 0x100cb8, addr >> 8);
 nv_wr32(subdev, 0x100cbc, 0x80000000 | type);


 if (!nv_wait(subdev, 0x100c80, 0x00008000, 0x00008000)) {
  nv_error(subdev, "vm timeout 1: 0x%08x %d\n",
    nv_rd32(subdev, 0x100c80), type);
 }
 spin_unlock_irqrestore(&priv->lock, flags);
}
