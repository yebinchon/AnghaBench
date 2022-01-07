
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;


 int nouveau_engctx_destroy (int ) ;
 int nv_engctx (struct nouveau_object*) ;

void
_nouveau_engctx_dtor(struct nouveau_object *object)
{
 nouveau_engctx_destroy(nv_engctx(object));
}
