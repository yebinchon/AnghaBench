
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nouveau_pm_voltage {int vid_mask; } ;
struct nouveau_gpio {int (* get ) (struct nouveau_gpio*,int ,int ,int) ;} ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nouveau_pm_voltage voltage; } ;


 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_gpio* nouveau_gpio (struct nouveau_device*) ;
 TYPE_1__* nouveau_pm (struct drm_device*) ;
 int nouveau_volt_lvl_lookup (struct drm_device*,int) ;
 int nr_vidtag ;
 int stub1 (struct nouveau_gpio*,int ,int ,int) ;
 int * vidtag ;

int
nouveau_voltage_gpio_get(struct drm_device *dev)
{
 struct nouveau_pm_voltage *volt = &nouveau_pm(dev)->voltage;
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_gpio *gpio = nouveau_gpio(device);
 u8 vid = 0;
 int i;

 for (i = 0; i < nr_vidtag; i++) {
  if (!(volt->vid_mask & (1 << i)))
   continue;

  vid |= gpio->get(gpio, 0, vidtag[i], 0xff) << i;
 }

 return nouveau_volt_lvl_lookup(dev, vid);
}
