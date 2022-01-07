
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_subdev {int unit; int base; } ;


 int nouveau_object_fini (int *,int) ;
 int nv_mask (struct nouveau_subdev*,int,int,int) ;

int
nouveau_subdev_fini(struct nouveau_subdev *subdev, bool suspend)
{
 if (subdev->unit) {
  nv_mask(subdev, 0x000200, subdev->unit, 0x00000000);
  nv_mask(subdev, 0x000200, subdev->unit, subdev->unit);
 }

 return nouveau_object_fini(&subdev->base, suspend);
}
