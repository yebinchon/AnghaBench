
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_disp_priv {int dummy; } ;
struct nv50_disp_base {int base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int nouveau_parent_fini (int *,int) ;
 int nv_wr32 (struct nv50_disp_priv*,int,int) ;

__attribute__((used)) static int
nvd0_disp_base_fini(struct nouveau_object *object, bool suspend)
{
 struct nv50_disp_priv *priv = (void *)object->engine;
 struct nv50_disp_base *base = (void *)object;


 nv_wr32(priv, 0x6100b0, 0x00000000);

 return nouveau_parent_fini(&base->base, suspend);
}
