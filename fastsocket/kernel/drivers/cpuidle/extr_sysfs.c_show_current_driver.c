
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_class {int dummy; } ;
struct cpuidle_driver {char* name; } ;
typedef int ssize_t ;


 int cpuidle_driver_lock ;
 struct cpuidle_driver* cpuidle_get_driver () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_current_driver(struct sysdev_class *class,
       char *buf)
{
 ssize_t ret;
 struct cpuidle_driver *cpuidle_driver = cpuidle_get_driver();

 spin_lock(&cpuidle_driver_lock);
 if (cpuidle_driver)
  ret = sprintf(buf, "%s\n", cpuidle_driver->name);
 else
  ret = sprintf(buf, "none\n");
 spin_unlock(&cpuidle_driver_lock);

 return ret;
}
