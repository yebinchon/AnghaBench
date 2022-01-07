
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;


 int nouveau_engctx_init (int ) ;
 int nv_engctx (struct nouveau_object*) ;

int
_nouveau_engctx_init(struct nouveau_object *object)
{
 return nouveau_engctx_init(nv_engctx(object));
}
