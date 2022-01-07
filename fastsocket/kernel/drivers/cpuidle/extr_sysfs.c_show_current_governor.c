
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysdev_class {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 TYPE_1__* cpuidle_curr_governor ;
 int cpuidle_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_current_governor(struct sysdev_class *class,
         char *buf)
{
 ssize_t ret;

 mutex_lock(&cpuidle_lock);
 if (cpuidle_curr_governor)
  ret = sprintf(buf, "%s\n", cpuidle_curr_governor->name);
 else
  ret = sprintf(buf, "none\n");
 mutex_unlock(&cpuidle_lock);

 return ret;
}
