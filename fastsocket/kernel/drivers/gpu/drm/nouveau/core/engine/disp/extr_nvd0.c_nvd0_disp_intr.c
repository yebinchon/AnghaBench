
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int vblank; } ;
struct TYPE_3__ {int nr; } ;
struct nv50_disp_priv {int super; TYPE_2__ base; TYPE_1__ head; int supervisor; } ;
struct nouveau_subdev {int dummy; } ;


 int ffs (int) ;
 int nouveau_event_trigger (int ,int) ;
 int nv_error (struct nv50_disp_priv*,char*,int,int,int,int,int) ;
 int nv_info (struct nv50_disp_priv*,char*,int) ;
 int nv_mask (struct nv50_disp_priv*,int,int ,int ) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;
 int nv_wr32 (struct nv50_disp_priv*,int,int) ;
 int schedule_work (int *) ;

void
nvd0_disp_intr(struct nouveau_subdev *subdev)
{
 struct nv50_disp_priv *priv = (void *)subdev;
 u32 intr = nv_rd32(priv, 0x610088);
 int i;

 if (intr & 0x00000001) {
  u32 stat = nv_rd32(priv, 0x61008c);
  nv_wr32(priv, 0x61008c, stat);
  intr &= ~0x00000001;
 }

 if (intr & 0x00000002) {
  u32 stat = nv_rd32(priv, 0x61009c);
  int chid = ffs(stat) - 1;
  if (chid >= 0) {
   u32 mthd = nv_rd32(priv, 0x6101f0 + (chid * 12));
   u32 data = nv_rd32(priv, 0x6101f4 + (chid * 12));
   u32 unkn = nv_rd32(priv, 0x6101f8 + (chid * 12));

   nv_error(priv, "chid %d mthd 0x%04x data 0x%08x "
           "0x%08x 0x%08x\n",
     chid, (mthd & 0x0000ffc), data, mthd, unkn);
   nv_wr32(priv, 0x61009c, (1 << chid));
   nv_wr32(priv, 0x6101f0 + (chid * 12), 0x90000000);
  }

  intr &= ~0x00000002;
 }

 if (intr & 0x00100000) {
  u32 stat = nv_rd32(priv, 0x6100ac);
  if (stat & 0x00000007) {
   priv->super = (stat & 0x00000007);
   schedule_work(&priv->supervisor);
   nv_wr32(priv, 0x6100ac, priv->super);
   stat &= ~0x00000007;
  }

  if (stat) {
   nv_info(priv, "unknown intr24 0x%08x\n", stat);
   nv_wr32(priv, 0x6100ac, stat);
  }

  intr &= ~0x00100000;
 }

 for (i = 0; i < priv->head.nr; i++) {
  u32 mask = 0x01000000 << i;
  if (mask & intr) {
   u32 stat = nv_rd32(priv, 0x6100bc + (i * 0x800));
   if (stat & 0x00000001)
    nouveau_event_trigger(priv->base.vblank, i);
   nv_mask(priv, 0x6100bc + (i * 0x800), 0, 0);
   nv_rd32(priv, 0x6100c0 + (i * 0x800));
  }
 }
}
