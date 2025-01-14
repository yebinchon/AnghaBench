
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv50_display_oimm_class {scalar_t__ head; } ;
struct TYPE_2__ {scalar_t__ nr; } ;
struct nv50_disp_priv {TYPE_1__ head; } ;
struct nv50_disp_pioc {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int EINVAL ;
 struct nouveau_object* nv_object (struct nv50_disp_pioc*) ;
 int nvd0_disp_pioc_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,scalar_t__,int,void**) ;

__attribute__((used)) static int
nvd0_disp_oimm_ctor(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass, void *data, u32 size,
      struct nouveau_object **pobject)
{
 struct nv50_display_oimm_class *args = data;
 struct nv50_disp_priv *priv = (void *)engine;
 struct nv50_disp_pioc *pioc;
 int ret;

 if (size < sizeof(*args) || args->head >= priv->head.nr)
  return -EINVAL;

 ret = nvd0_disp_pioc_create_(parent, engine, oclass, 9 + args->head,
         sizeof(*pioc), (void **)&pioc);
 *pobject = nv_object(pioc);
 if (ret)
  return ret;

 return 0;
}
