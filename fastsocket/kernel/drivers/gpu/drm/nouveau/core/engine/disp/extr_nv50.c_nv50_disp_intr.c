
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vblank; } ;
struct nv50_disp_priv {int super; int supervisor; TYPE_1__ base; } ;
struct nouveau_subdev {int dummy; } ;


 int nouveau_event_trigger (int ,int) ;
 int nv50_disp_intr_error (struct nv50_disp_priv*) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;
 int nv_wr32 (struct nv50_disp_priv*,int,int) ;
 int schedule_work (int *) ;

void
nv50_disp_intr(struct nouveau_subdev *subdev)
{
 struct nv50_disp_priv *priv = (void *)subdev;
 u32 intr0 = nv_rd32(priv, 0x610020);
 u32 intr1 = nv_rd32(priv, 0x610024);

 if (intr0 & 0x001f0000) {
  nv50_disp_intr_error(priv);
  intr0 &= ~0x001f0000;
 }

 if (intr1 & 0x00000004) {
  nouveau_event_trigger(priv->base.vblank, 0);
  nv_wr32(priv, 0x610024, 0x00000004);
  intr1 &= ~0x00000004;
 }

 if (intr1 & 0x00000008) {
  nouveau_event_trigger(priv->base.vblank, 1);
  nv_wr32(priv, 0x610024, 0x00000008);
  intr1 &= ~0x00000008;
 }

 if (intr1 & 0x00000070) {
  priv->super = (intr1 & 0x00000070);
  schedule_work(&priv->supervisor);
  nv_wr32(priv, 0x610024, priv->super);
  intr1 &= ~0x00000070;
 }
}
