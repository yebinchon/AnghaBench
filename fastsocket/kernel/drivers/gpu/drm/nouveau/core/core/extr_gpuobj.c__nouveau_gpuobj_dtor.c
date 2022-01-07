
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;


 int nouveau_gpuobj_destroy (int ) ;
 int nv_gpuobj (struct nouveau_object*) ;

void
_nouveau_gpuobj_dtor(struct nouveau_object *object)
{
 nouveau_gpuobj_destroy(nv_gpuobj(object));
}
