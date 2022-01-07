
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_subdev {int base; } ;


 int nouveau_object_init (int *) ;
 int nouveau_subdev_reset (int *) ;

int
nouveau_subdev_init(struct nouveau_subdev *subdev)
{
 int ret = nouveau_object_init(&subdev->base);
 if (ret)
  return ret;

 nouveau_subdev_reset(&subdev->base);
 return 0;
}
