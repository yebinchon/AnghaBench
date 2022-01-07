
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;


 int nouveau_subdev_destroy (int ) ;
 int nv_subdev (struct nouveau_object*) ;

void
_nouveau_subdev_dtor(struct nouveau_object *object)
{
 nouveau_subdev_destroy(nv_subdev(object));
}
