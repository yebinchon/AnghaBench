
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int nr; } ;
struct TYPE_6__ {int nr; } ;
struct TYPE_5__ {int nr; } ;
struct nv50_disp_priv {TYPE_3__ sor; TYPE_2__ dac; TYPE_1__ head; } ;
struct nv50_disp_base {int base; } ;
struct nouveau_object {int parent; scalar_t__ engine; } ;
struct TYPE_8__ {int addr; } ;


 int EBUSY ;
 int nouveau_parent_init (int *) ;
 int nv_error (struct nv50_disp_priv*,char*) ;
 TYPE_4__* nv_gpuobj (int ) ;
 int nv_mask (struct nv50_disp_priv*,int,int,int) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;
 int nv_wait (struct nv50_disp_priv*,int,int,int) ;
 int nv_wr32 (struct nv50_disp_priv*,int,int) ;

__attribute__((used)) static int
nvd0_disp_base_init(struct nouveau_object *object)
{
 struct nv50_disp_priv *priv = (void *)object->engine;
 struct nv50_disp_base *base = (void *)object;
 int ret, i;
 u32 tmp;

 ret = nouveau_parent_init(&base->base);
 if (ret)
  return ret;







 for (i = 0; i < priv->head.nr; i++) {
  tmp = nv_rd32(priv, 0x616104 + (i * 0x800));
  nv_wr32(priv, 0x6101b4 + (i * 0x800), tmp);
  tmp = nv_rd32(priv, 0x616108 + (i * 0x800));
  nv_wr32(priv, 0x6101b8 + (i * 0x800), tmp);
  tmp = nv_rd32(priv, 0x61610c + (i * 0x800));
  nv_wr32(priv, 0x6101bc + (i * 0x800), tmp);
 }


 for (i = 0; i < priv->dac.nr; i++) {
  tmp = nv_rd32(priv, 0x61a000 + (i * 0x800));
  nv_wr32(priv, 0x6101c0 + (i * 0x800), tmp);
 }


 for (i = 0; i < priv->sor.nr; i++) {
  tmp = nv_rd32(priv, 0x61c000 + (i * 0x800));
  nv_wr32(priv, 0x6301c4 + (i * 0x800), tmp);
 }


 if (nv_rd32(priv, 0x6100ac) & 0x00000100) {
  nv_wr32(priv, 0x6100ac, 0x00000100);
  nv_mask(priv, 0x6194e8, 0x00000001, 0x00000000);
  if (!nv_wait(priv, 0x6194e8, 0x00000002, 0x00000000)) {
   nv_error(priv, "timeout acquiring display\n");
   return -EBUSY;
  }
 }


 nv_wr32(priv, 0x610010, (nv_gpuobj(object->parent)->addr >> 8) | 9);


 nv_wr32(priv, 0x610090, 0x00000000);
 nv_wr32(priv, 0x6100a0, 0x00000000);
 nv_wr32(priv, 0x6100b0, 0x00000307);

 return 0;
}
