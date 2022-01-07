
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;


 int nouveau_engctx_fini (int ,int) ;
 int nv_engctx (struct nouveau_object*) ;

int
_nouveau_engctx_fini(struct nouveau_object *object, bool suspend)
{
 return nouveau_engctx_fini(nv_engctx(object), suspend);
}
