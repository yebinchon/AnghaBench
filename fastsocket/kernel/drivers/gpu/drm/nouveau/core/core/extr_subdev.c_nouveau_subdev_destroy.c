
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_subdev {int base; } ;
struct TYPE_2__ {int ** subdev; } ;


 int nouveau_object_destroy (int *) ;
 TYPE_1__* nv_device (struct nouveau_subdev*) ;
 int nv_hclass (struct nouveau_subdev*) ;

void
nouveau_subdev_destroy(struct nouveau_subdev *subdev)
{
 int subidx = nv_hclass(subdev) & 0xff;
 nv_device(subdev)->subdev[subidx] = ((void*)0);
 nouveau_object_destroy(&subdev->base);
}
