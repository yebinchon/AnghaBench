
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int buflen; int * buf; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*) ;
 int create_modalias (struct acpi_device*,int *,int) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static int acpi_device_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 int len;

 if (add_uevent_var(env, "MODALIAS="))
  return -ENOMEM;
 len = create_modalias(acpi_dev, &env->buf[env->buflen - 1],
         sizeof(env->buf) - env->buflen);
 if (len >= (sizeof(env->buf) - env->buflen))
  return -ENOMEM;
 env->buflen += len;
 return 0;
}
