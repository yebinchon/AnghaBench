
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int name; TYPE_1__* id_entry; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int PLATFORM_MODULE_PREFIX ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int platform_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct platform_device *pdev = to_platform_device(dev);

 add_uevent_var(env, "MODALIAS=%s%s", PLATFORM_MODULE_PREFIX,
  (pdev->id_entry) ? pdev->id_entry->name : pdev->name);
 return 0;
}
