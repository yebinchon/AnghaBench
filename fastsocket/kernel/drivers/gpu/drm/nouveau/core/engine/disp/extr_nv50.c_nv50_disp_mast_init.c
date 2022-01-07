
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_disp_priv {int dummy; } ;
struct nv50_disp_dmac {int push; int base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int EBUSY ;
 int nv50_disp_chan_init (int *) ;
 int nv_error (struct nv50_disp_dmac*,char*,int) ;
 int nv_mask (struct nv50_disp_priv*,int,int,int) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;
 int nv_wait (struct nv50_disp_priv*,int,int,int) ;
 int nv_wr32 (struct nv50_disp_priv*,int,int) ;

__attribute__((used)) static int
nv50_disp_mast_init(struct nouveau_object *object)
{
 struct nv50_disp_priv *priv = (void *)object->engine;
 struct nv50_disp_dmac *mast = (void *)object;
 int ret;

 ret = nv50_disp_chan_init(&mast->base);
 if (ret)
  return ret;


 nv_mask(priv, 0x610028, 0x00010001, 0x00010001);


 if ((nv_rd32(priv, 0x610200) & 0x009f0000) == 0x00020000)
  nv_mask(priv, 0x610200, 0x00800000, 0x00800000);
 if ((nv_rd32(priv, 0x610200) & 0x003f0000) == 0x00030000)
  nv_mask(priv, 0x610200, 0x00600000, 0x00600000);


 nv_wr32(priv, 0x610204, mast->push);
 nv_wr32(priv, 0x610208, 0x00010000);
 nv_wr32(priv, 0x61020c, 0x00000000);
 nv_mask(priv, 0x610200, 0x00000010, 0x00000010);
 nv_wr32(priv, 0x640000, 0x00000000);
 nv_wr32(priv, 0x610200, 0x01000013);


 if (!nv_wait(priv, 0x610200, 0x80000000, 0x00000000)) {
  nv_error(mast, "init: 0x%08x\n", nv_rd32(priv, 0x610200));
  return -EBUSY;
 }

 return 0;
}
