
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pll_calc; int pll_set; } ;
struct nva3_clock_priv {TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_clock_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nva3_clock_priv**) ;
 struct nouveau_object* nv_object (struct nva3_clock_priv*) ;
 int nva3_clock_pll_calc ;
 int nva3_clock_pll_set ;

__attribute__((used)) static int
nva3_clock_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
  struct nouveau_oclass *oclass, void *data, u32 size,
  struct nouveau_object **pobject)
{
 struct nva3_clock_priv *priv;
 int ret;

 ret = nouveau_clock_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.pll_set = nva3_clock_pll_set;
 priv->base.pll_calc = nva3_clock_pll_calc;
 return 0;
}
