
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {char* name; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,char*) ;
 int make_modalias (struct device*,char*) ;
 struct parisc_device* to_parisc_device (struct device*) ;

__attribute__((used)) static int parisc_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 const struct parisc_device *padev;
 char modalias[40];

 if (!dev)
  return -ENODEV;

 padev = to_parisc_device(dev);
 if (!padev)
  return -ENODEV;

 if (add_uevent_var(env, "PARISC_NAME=%s", padev->name))
  return -ENOMEM;

 make_modalias(dev, modalias);
 if (add_uevent_var(env, "MODALIAS=%s", modalias))
  return -ENOMEM;

 return 0;
}
