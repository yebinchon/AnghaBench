
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_pm_voltage {int vid_mask; } ;
struct nouveau_gpio {int (* set ) (struct nouveau_gpio*,int ,int ,int,int) ;} ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nouveau_pm_voltage voltage; } ;


 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_gpio* nouveau_gpio (struct nouveau_device*) ;
 TYPE_1__* nouveau_pm (struct drm_device*) ;
 int nouveau_volt_vid_lookup (struct drm_device*,int) ;
 int nr_vidtag ;
 int stub1 (struct nouveau_gpio*,int ,int ,int,int) ;
 int * vidtag ;

int
nouveau_voltage_gpio_set(struct drm_device *dev, int voltage)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_gpio *gpio = nouveau_gpio(device);
 struct nouveau_pm_voltage *volt = &nouveau_pm(dev)->voltage;
 int vid, i;

 vid = nouveau_volt_vid_lookup(dev, voltage);
 if (vid < 0)
  return vid;

 for (i = 0; i < nr_vidtag; i++) {
  if (!(volt->vid_mask & (1 << i)))
   continue;

  gpio->set(gpio, 0, vidtag[i], 0xff, !!(vid & (1 << i)));
 }

 return 0;
}
