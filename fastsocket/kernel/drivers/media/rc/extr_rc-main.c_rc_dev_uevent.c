
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
struct rc_dev {scalar_t__ driver_name; TYPE_1__ rc_map; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ADD_HOTPLUG_VAR (char*,scalar_t__) ;
 struct rc_dev* to_rc_dev (struct device*) ;

__attribute__((used)) static int rc_dev_uevent(struct device *device, struct kobj_uevent_env *env)
{
 struct rc_dev *dev = to_rc_dev(device);

 if (dev->rc_map.name)
  ADD_HOTPLUG_VAR("NAME=%s", dev->rc_map.name);
 if (dev->driver_name)
  ADD_HOTPLUG_VAR("DRV_NAME=%s", dev->driver_name);

 return 0;
}
