
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_devobj {struct nouveau_object** subdev; int base; } ;


 int NVDEV_SUBDEV_NR ;
 int NV_ENGINE_CLASS ;
 int nouveau_object_dec (struct nouveau_object*,int) ;
 int nouveau_object_inc (struct nouveau_object*) ;
 int nouveau_parent_fini (int *,int) ;
 int nv_iclass (struct nouveau_object*,int ) ;

__attribute__((used)) static int
nouveau_devobj_fini(struct nouveau_object *object, bool suspend)
{
 struct nouveau_devobj *devobj = (void *)object;
 struct nouveau_object *subdev;
 int ret, i;

 for (i = NVDEV_SUBDEV_NR - 1; i >= 0; i--) {
  if ((subdev = devobj->subdev[i])) {
   if (!nv_iclass(subdev, NV_ENGINE_CLASS)) {
    ret = nouveau_object_dec(subdev, suspend);
    if (ret && suspend)
     goto fail;
   }
  }
 }

 ret = nouveau_parent_fini(&devobj->base, suspend);
fail:
 for (; ret && suspend && i < NVDEV_SUBDEV_NR; i++) {
  if ((subdev = devobj->subdev[i])) {
   if (!nv_iclass(subdev, NV_ENGINE_CLASS)) {
    ret = nouveau_object_inc(subdev);
    if (ret) {

    }
   }
  }
 }

 return ret;
}
