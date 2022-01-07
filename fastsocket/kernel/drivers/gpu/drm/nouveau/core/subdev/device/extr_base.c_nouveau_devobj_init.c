
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_devobj {int created; struct nouveau_object** subdev; int base; } ;


 int NVDEV_SUBDEV_NR ;
 int NV_ENGINE_CLASS ;
 int nouveau_object_dec (struct nouveau_object*,int) ;
 int nouveau_object_inc (struct nouveau_object*) ;
 int nouveau_parent_init (int *) ;
 int nv_iclass (struct nouveau_object*,int ) ;

__attribute__((used)) static int
nouveau_devobj_init(struct nouveau_object *object)
{
 struct nouveau_devobj *devobj = (void *)object;
 struct nouveau_object *subdev;
 int ret, i;

 ret = nouveau_parent_init(&devobj->base);
 if (ret)
  return ret;

 for (i = 0; devobj->created && i < NVDEV_SUBDEV_NR; i++) {
  if ((subdev = devobj->subdev[i])) {
   if (!nv_iclass(subdev, NV_ENGINE_CLASS)) {
    ret = nouveau_object_inc(subdev);
    if (ret)
     goto fail;
   }
  }
 }

 devobj->created = 1;
 return 0;

fail:
 for (--i; i >= 0; i--) {
  if ((subdev = devobj->subdev[i])) {
   if (!nv_iclass(subdev, NV_ENGINE_CLASS))
    nouveau_object_dec(subdev, 0);
  }
 }

 return ret;
}
