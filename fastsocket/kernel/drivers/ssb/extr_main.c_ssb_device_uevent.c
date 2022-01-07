
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int revision; int coreid; int vendor; } ;
struct ssb_device {TYPE_1__ id; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ,int ,int ) ;
 struct ssb_device* dev_to_ssb_dev (struct device*) ;

__attribute__((used)) static int ssb_device_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct ssb_device *ssb_dev = dev_to_ssb_dev(dev);

 if (!dev)
  return -ENODEV;

 return add_uevent_var(env,
        "MODALIAS=ssb:v%04Xid%04Xrev%02X",
        ssb_dev->id.vendor, ssb_dev->id.coreid,
        ssb_dev->id.revision);
}
