
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int ERESTARTSYS ;
 int PAGE_SIZE ;
 TYPE_1__* current_rng ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rng_mutex ;
 int snprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static ssize_t hwrng_attr_current_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 int err;
 ssize_t ret;
 const char *name = "none";

 err = mutex_lock_interruptible(&rng_mutex);
 if (err)
  return -ERESTARTSYS;
 if (current_rng)
  name = current_rng->name;
 ret = snprintf(buf, PAGE_SIZE, "%s\n", name);
 mutex_unlock(&rng_mutex);

 return ret;
}
