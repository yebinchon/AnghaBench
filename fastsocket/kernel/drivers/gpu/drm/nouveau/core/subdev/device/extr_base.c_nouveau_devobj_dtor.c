
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_devobj {int base; int * subdev; } ;


 int NVDEV_SUBDEV_NR ;
 int nouveau_object_ref (int *,int *) ;
 int nouveau_parent_destroy (int *) ;

__attribute__((used)) static void
nouveau_devobj_dtor(struct nouveau_object *object)
{
 struct nouveau_devobj *devobj = (void *)object;
 int i;

 for (i = NVDEV_SUBDEV_NR - 1; i >= 0; i--)
  nouveau_object_ref(((void*)0), &devobj->subdev[i]);

 nouveau_parent_destroy(&devobj->base);
}
