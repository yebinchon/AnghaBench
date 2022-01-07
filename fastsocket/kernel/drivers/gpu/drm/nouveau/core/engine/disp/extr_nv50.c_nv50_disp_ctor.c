
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int nr; int * dp; int power; } ;
struct TYPE_9__ {int nr; int power; } ;
struct TYPE_8__ {int nr; int sense; int power; } ;
struct TYPE_7__ {int nr; } ;
struct nv50_disp_priv {TYPE_4__ pior; TYPE_3__ sor; TYPE_2__ dac; TYPE_1__ head; int sclass; int supervisor; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_12__ {int * cclass; int sclass; } ;
struct TYPE_11__ {int intr; } ;


 int INIT_WORK (int *,int ) ;
 int nouveau_disp_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,char*,char*,struct nv50_disp_priv**) ;
 int nv50_dac_power ;
 int nv50_dac_sense ;
 int nv50_disp_base_oclass ;
 int nv50_disp_cclass ;
 int nv50_disp_intr ;
 int nv50_disp_intr_supervisor ;
 int nv50_disp_sclass ;
 int nv50_pior_dp_func ;
 int nv50_pior_power ;
 int nv50_sor_power ;
 TYPE_6__* nv_engine (struct nv50_disp_priv*) ;
 struct nouveau_object* nv_object (struct nv50_disp_priv*) ;
 TYPE_5__* nv_subdev (struct nv50_disp_priv*) ;

__attribute__((used)) static int
nv50_disp_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nv50_disp_priv *priv;
 int ret;

 ret = nouveau_disp_create(parent, engine, oclass, 2, "PDISP",
      "display", &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_engine(priv)->sclass = nv50_disp_base_oclass;
 nv_engine(priv)->cclass = &nv50_disp_cclass;
 nv_subdev(priv)->intr = nv50_disp_intr;
 INIT_WORK(&priv->supervisor, nv50_disp_intr_supervisor);
 priv->sclass = nv50_disp_sclass;
 priv->head.nr = 2;
 priv->dac.nr = 3;
 priv->sor.nr = 2;
 priv->pior.nr = 3;
 priv->dac.power = nv50_dac_power;
 priv->dac.sense = nv50_dac_sense;
 priv->sor.power = nv50_sor_power;
 priv->pior.power = nv50_pior_power;
 priv->pior.dp = &nv50_pior_dp_func;
 return 0;
}
