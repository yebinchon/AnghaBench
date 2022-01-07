
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct fw_unit {int dummy; } ;
struct device {int dummy; } ;
typedef int modalias ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,char*) ;
 struct fw_unit* fw_unit (struct device*) ;
 int get_modalias (struct fw_unit*,char*,int) ;

__attribute__((used)) static int fw_unit_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct fw_unit *unit = fw_unit(dev);
 char modalias[64];

 get_modalias(unit, modalias, sizeof(modalias));

 if (add_uevent_var(env, "MODALIAS=%s", modalias))
  return -ENOMEM;

 return 0;
}
