
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobj_uevent_env {int dummy; } ;
struct TYPE_2__ {int version; int product; int vendor; int bustype; } ;
struct input_dev {int swbit; int evbit; int ffbit; int sndbit; int ledbit; int mscbit; int absbit; int relbit; int keybit; scalar_t__ uniq; scalar_t__ phys; scalar_t__ name; TYPE_1__ id; } ;
struct device {int dummy; } ;


 int ABS_MAX ;
 int EV_ABS ;
 int EV_FF ;
 int EV_KEY ;
 int EV_LED ;
 int EV_MAX ;
 int EV_MSC ;
 int EV_REL ;
 int EV_SND ;
 int EV_SW ;
 int FF_MAX ;
 int INPUT_ADD_HOTPLUG_BM_VAR (char*,int ,int ) ;
 int INPUT_ADD_HOTPLUG_MODALIAS_VAR (struct input_dev*) ;
 int INPUT_ADD_HOTPLUG_VAR (char*,scalar_t__,...) ;
 int KEY_MAX ;
 int LED_MAX ;
 int MSC_MAX ;
 int REL_MAX ;
 int SND_MAX ;
 int SW_MAX ;
 scalar_t__ test_bit (int ,int ) ;
 struct input_dev* to_input_dev (struct device*) ;

__attribute__((used)) static int input_dev_uevent(struct device *device, struct kobj_uevent_env *env)
{
 struct input_dev *dev = to_input_dev(device);

 INPUT_ADD_HOTPLUG_VAR("PRODUCT=%x/%x/%x/%x",
    dev->id.bustype, dev->id.vendor,
    dev->id.product, dev->id.version);
 if (dev->name)
  INPUT_ADD_HOTPLUG_VAR("NAME=\"%s\"", dev->name);
 if (dev->phys)
  INPUT_ADD_HOTPLUG_VAR("PHYS=\"%s\"", dev->phys);
 if (dev->uniq)
  INPUT_ADD_HOTPLUG_VAR("UNIQ=\"%s\"", dev->uniq);

 INPUT_ADD_HOTPLUG_BM_VAR("EV=", dev->evbit, EV_MAX);
 if (test_bit(EV_KEY, dev->evbit))
  INPUT_ADD_HOTPLUG_BM_VAR("KEY=", dev->keybit, KEY_MAX);
 if (test_bit(EV_REL, dev->evbit))
  INPUT_ADD_HOTPLUG_BM_VAR("REL=", dev->relbit, REL_MAX);
 if (test_bit(EV_ABS, dev->evbit))
  INPUT_ADD_HOTPLUG_BM_VAR("ABS=", dev->absbit, ABS_MAX);
 if (test_bit(EV_MSC, dev->evbit))
  INPUT_ADD_HOTPLUG_BM_VAR("MSC=", dev->mscbit, MSC_MAX);
 if (test_bit(EV_LED, dev->evbit))
  INPUT_ADD_HOTPLUG_BM_VAR("LED=", dev->ledbit, LED_MAX);
 if (test_bit(EV_SND, dev->evbit))
  INPUT_ADD_HOTPLUG_BM_VAR("SND=", dev->sndbit, SND_MAX);
 if (test_bit(EV_FF, dev->evbit))
  INPUT_ADD_HOTPLUG_BM_VAR("FF=", dev->ffbit, FF_MAX);
 if (test_bit(EV_SW, dev->evbit))
  INPUT_ADD_HOTPLUG_BM_VAR("SW=", dev->swbit, SW_MAX);

 INPUT_ADD_HOTPLUG_MODALIAS_VAR(dev);

 return 0;
}
