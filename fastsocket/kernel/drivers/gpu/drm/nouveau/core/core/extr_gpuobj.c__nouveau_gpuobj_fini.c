
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;


 int nouveau_gpuobj_fini (int ,int) ;
 int nv_gpuobj (struct nouveau_object*) ;

int
_nouveau_gpuobj_fini(struct nouveau_object *object, bool suspend)
{
 return nouveau_gpuobj_fini(nv_gpuobj(object), suspend);
}
