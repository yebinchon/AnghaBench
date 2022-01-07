
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_disp_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nv50_disp_dmac {TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int EBUSY ;
 int nv50_disp_chan_fini (TYPE_1__*,int) ;
 int nv_error (struct nv50_disp_dmac*,char*,int ) ;
 int nv_mask (struct nv50_disp_priv*,int,int,int) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;
 int nv_wait (struct nv50_disp_priv*,int,int,int) ;

__attribute__((used)) static int
nv50_disp_dmac_fini(struct nouveau_object *object, bool suspend)
{
 struct nv50_disp_priv *priv = (void *)object->engine;
 struct nv50_disp_dmac *dmac = (void *)object;
 int chid = dmac->base.chid;


 nv_mask(priv, 0x610200 + (chid * 0x0010), 0x00001010, 0x00001000);
 nv_mask(priv, 0x610200 + (chid * 0x0010), 0x00000003, 0x00000000);
 if (!nv_wait(priv, 0x610200 + (chid * 0x10), 0x001e0000, 0x00000000)) {
  nv_error(dmac, "fini timeout, 0x%08x\n",
    nv_rd32(priv, 0x610200 + (chid * 0x10)));
  if (suspend)
   return -EBUSY;
 }


 nv_mask(priv, 0x610028, 0x00010001 << chid, 0x00000000 << chid);

 return nv50_disp_chan_fini(&dmac->base, suspend);
}
