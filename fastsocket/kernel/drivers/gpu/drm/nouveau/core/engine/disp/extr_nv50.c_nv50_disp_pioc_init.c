
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_disp_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nv50_disp_pioc {TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int EBUSY ;
 int nv50_disp_chan_init (TYPE_1__*) ;
 int nv_error (struct nv50_disp_pioc*,char*,int ) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;
 int nv_wait (struct nv50_disp_priv*,int,int,int) ;
 int nv_wr32 (struct nv50_disp_priv*,int,int) ;

__attribute__((used)) static int
nv50_disp_pioc_init(struct nouveau_object *object)
{
 struct nv50_disp_priv *priv = (void *)object->engine;
 struct nv50_disp_pioc *pioc = (void *)object;
 int chid = pioc->base.chid;
 int ret;

 ret = nv50_disp_chan_init(&pioc->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0x610200 + (chid * 0x10), 0x00002000);
 if (!nv_wait(priv, 0x610200 + (chid * 0x10), 0x00000000, 0x00000000)) {
  nv_error(pioc, "timeout0: 0x%08x\n",
    nv_rd32(priv, 0x610200 + (chid * 0x10)));
  return -EBUSY;
 }

 nv_wr32(priv, 0x610200 + (chid * 0x10), 0x00000001);
 if (!nv_wait(priv, 0x610200 + (chid * 0x10), 0x00030000, 0x00010000)) {
  nv_error(pioc, "timeout1: 0x%08x\n",
    nv_rd32(priv, 0x610200 + (chid * 0x10)));
  return -EBUSY;
 }

 return 0;
}
