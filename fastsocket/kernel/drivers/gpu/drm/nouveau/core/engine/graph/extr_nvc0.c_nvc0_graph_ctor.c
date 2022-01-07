
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvc0_graph_priv {int firmware; int rop_nr; int gpc_nr; int* tpc_nr; int tpc_total; int magic_not_rop_nr; int unk4188b8; int unk4188b4; int fuc41ad; int fuc41ac; int fuc409d; int fuc409c; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int firmware; int rop_nr; int gpc_nr; int* tpc_nr; int tpc_total; int magic_not_rop_nr; int unk4188b8; int unk4188b4; int fuc41ad; int fuc41ac; int fuc409d; int fuc409c; } ;
struct nouveau_device {int chipset; int cfgopt; } ;
struct TYPE_4__ {int sclass; int * cclass; } ;
struct TYPE_3__ {int unit; int intr; } ;


 int EINVAL ;
 int GPC_UNIT (int,int) ;
 scalar_t__ nouveau_boolopt (int ,char*,int) ;
 int nouveau_gpuobj_new (struct nvc0_graph_priv*,int *,int,int,int ,int *) ;
 int nouveau_graph_create (struct nvc0_graph_priv*,struct nvc0_graph_priv*,struct nouveau_oclass*,int,struct nvc0_graph_priv**) ;
 struct nouveau_device* nv_device (struct nvc0_graph_priv*) ;
 TYPE_2__* nv_engine (struct nvc0_graph_priv*) ;
 int nv_info (struct nvc0_graph_priv*,char*) ;
 struct nvc0_graph_priv* nv_object (struct nvc0_graph_priv*) ;
 int nv_rd32 (struct nvc0_graph_priv*,int) ;
 TYPE_1__* nv_subdev (struct nvc0_graph_priv*) ;
 int nv_wo32 (int ,int,int) ;
 int nvc0_graph_cclass ;
 int nvc0_graph_class (struct nvc0_graph_priv*) ;
 scalar_t__ nvc0_graph_ctor_fw (struct nvc0_graph_priv*,char*,int *) ;
 int nvc0_graph_intr ;
 int nvc0_graph_sclass ;
 int nvc1_graph_sclass ;
 int nvc8_graph_sclass ;

__attribute__((used)) static int
nvc0_graph_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
  struct nouveau_oclass *oclass, void *data, u32 size,
  struct nouveau_object **pobject)
{
 struct nouveau_device *device = nv_device(parent);
 struct nvc0_graph_priv *priv;
 int ret, i;

 ret = nouveau_graph_create(parent, engine, oclass, 1, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_subdev(priv)->unit = 0x18001000;
 nv_subdev(priv)->intr = nvc0_graph_intr;
 nv_engine(priv)->cclass = &nvc0_graph_cclass;

 if (nouveau_boolopt(device->cfgopt, "NvGrUseFW", 0)) {
  nv_info(priv, "using external firmware\n");
  if (nvc0_graph_ctor_fw(priv, "fuc409c", &priv->fuc409c) ||
      nvc0_graph_ctor_fw(priv, "fuc409d", &priv->fuc409d) ||
      nvc0_graph_ctor_fw(priv, "fuc41ac", &priv->fuc41ac) ||
      nvc0_graph_ctor_fw(priv, "fuc41ad", &priv->fuc41ad))
   return -EINVAL;
  priv->firmware = 1;
 }

 switch (nvc0_graph_class(priv)) {
 case 0x9097:
  nv_engine(priv)->sclass = nvc0_graph_sclass;
  break;
 case 0x9197:
  nv_engine(priv)->sclass = nvc1_graph_sclass;
  break;
 case 0x9297:
  nv_engine(priv)->sclass = nvc8_graph_sclass;
  break;
 }

 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x1000, 256, 0, &priv->unk4188b4);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x1000, 256, 0, &priv->unk4188b8);
 if (ret)
  return ret;

 for (i = 0; i < 0x1000; i += 4) {
  nv_wo32(priv->unk4188b4, i, 0x00000010);
  nv_wo32(priv->unk4188b8, i, 0x00000010);
 }

 priv->rop_nr = (nv_rd32(priv, 0x409604) & 0x001f0000) >> 16;
 priv->gpc_nr = nv_rd32(priv, 0x409604) & 0x0000001f;
 for (i = 0; i < priv->gpc_nr; i++) {
  priv->tpc_nr[i] = nv_rd32(priv, GPC_UNIT(i, 0x2608));
  priv->tpc_total += priv->tpc_nr[i];
 }


 switch (nv_device(priv)->chipset) {
 case 0xc0:
  if (priv->tpc_total == 11) {
   priv->magic_not_rop_nr = 0x07;
  } else
  if (priv->tpc_total == 14) {
   priv->magic_not_rop_nr = 0x05;
  } else
  if (priv->tpc_total == 15) {
   priv->magic_not_rop_nr = 0x06;
  }
  break;
 case 0xc3:
  priv->magic_not_rop_nr = 0x03;
  break;
 case 0xc4:
  priv->magic_not_rop_nr = 0x01;
  break;
 case 0xc1:
  priv->magic_not_rop_nr = 0x01;
  break;
 case 0xc8:
  priv->magic_not_rop_nr = 0x06;
  break;
 case 0xce:
  priv->magic_not_rop_nr = 0x03;
  break;
 case 0xcf:
  priv->magic_not_rop_nr = 0x03;
  break;
 case 0xd9:
  priv->magic_not_rop_nr = 0x01;
  break;
 }

 return 0;
}
