
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int nr; int * dp; int hdmi; int hda_eld; int power; } ;
struct TYPE_7__ {int nr; int sense; int power; } ;
struct TYPE_6__ {int nr; } ;
struct nv50_disp_priv {TYPE_3__ sor; TYPE_2__ dac; TYPE_1__ head; int sclass; int supervisor; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_10__ {int * cclass; int sclass; } ;
struct TYPE_9__ {int intr; } ;


 int INIT_WORK (int *,int ) ;
 int nouveau_disp_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,char*,char*,struct nv50_disp_priv**) ;
 int nv50_dac_power ;
 int nv50_dac_sense ;
 int nv50_disp_cclass ;
 int nv50_sor_power ;
 TYPE_5__* nv_engine (struct nv50_disp_priv*) ;
 struct nouveau_object* nv_object (struct nv50_disp_priv*) ;
 int nv_rd32 (struct nouveau_object*,int) ;
 TYPE_4__* nv_subdev (struct nv50_disp_priv*) ;
 int nvd0_disp_base_oclass ;
 int nvd0_disp_intr ;
 int nvd0_disp_intr_supervisor ;
 int nvd0_disp_sclass ;
 int nvd0_hda_eld ;
 int nvd0_hdmi_ctrl ;
 int nvd0_sor_dp_func ;

__attribute__((used)) static int
nvd0_disp_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nv50_disp_priv *priv;
 int heads = nv_rd32(parent, 0x022448);
 int ret;

 ret = nouveau_disp_create(parent, engine, oclass, heads,
      "PDISP", "display", &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_engine(priv)->sclass = nvd0_disp_base_oclass;
 nv_engine(priv)->cclass = &nv50_disp_cclass;
 nv_subdev(priv)->intr = nvd0_disp_intr;
 INIT_WORK(&priv->supervisor, nvd0_disp_intr_supervisor);
 priv->sclass = nvd0_disp_sclass;
 priv->head.nr = heads;
 priv->dac.nr = 3;
 priv->sor.nr = 4;
 priv->dac.power = nv50_dac_power;
 priv->dac.sense = nv50_dac_sense;
 priv->sor.power = nv50_sor_power;
 priv->sor.hda_eld = nvd0_hda_eld;
 priv->sor.hdmi = nvd0_hdmi_ctrl;
 priv->sor.dp = &nvd0_sor_dp_func;
 return 0;
}
