
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_system_bus_device {int match_sub_id; int match_id; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 struct ps3_system_bus_device* ps3_dev_to_system_bus_dev (struct device*) ;

__attribute__((used)) static int ps3_system_bus_uevent(struct device *_dev, struct kobj_uevent_env *env)
{
 struct ps3_system_bus_device *dev = ps3_dev_to_system_bus_dev(_dev);

 if (add_uevent_var(env, "MODALIAS=ps3:%d:%d", dev->match_id,
      dev->match_sub_id))
  return -ENOMEM;
 return 0;
}
