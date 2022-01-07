
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int base; int parent; } ;


 int nouveau_object_destroy (int *) ;
 int nouveau_object_ref (int *,int *) ;

__attribute__((used)) static void
nouveau_gpudup_dtor(struct nouveau_object *object)
{
 struct nouveau_gpuobj *gpuobj = (void *)object;
 nouveau_object_ref(((void*)0), &gpuobj->parent);
 nouveau_object_destroy(&gpuobj->base);
}
