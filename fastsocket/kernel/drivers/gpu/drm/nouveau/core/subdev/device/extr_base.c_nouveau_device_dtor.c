
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_object {int dummy; } ;
struct TYPE_2__ {scalar_t__ mmio; } ;
struct nouveau_device {TYPE_1__ base; int head; } ;


 int iounmap (scalar_t__) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_subdev_destroy (TYPE_1__*) ;
 int nv_devices_mutex ;

__attribute__((used)) static void
nouveau_device_dtor(struct nouveau_object *object)
{
 struct nouveau_device *device = (void *)object;

 mutex_lock(&nv_devices_mutex);
 list_del(&device->head);
 mutex_unlock(&nv_devices_mutex);

 if (device->base.mmio)
  iounmap(device->base.mmio);

 nouveau_subdev_destroy(&device->base);
}
