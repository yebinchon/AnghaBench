
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;


 int nouveau_subdev_fini (int ,int) ;
 int nv_subdev (struct nouveau_object*) ;

int
_nouveau_subdev_fini(struct nouveau_object *object, bool suspend)
{
 return nouveau_subdev_fini(nv_subdev(object), suspend);
}
