
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int st; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static int css_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct subchannel *sch = to_subchannel(dev);
 int ret;

 ret = add_uevent_var(env, "ST=%01X", sch->st);
 if (ret)
  return ret;
 ret = add_uevent_var(env, "MODALIAS=css:t%01X", sch->st);
 return ret;
}
