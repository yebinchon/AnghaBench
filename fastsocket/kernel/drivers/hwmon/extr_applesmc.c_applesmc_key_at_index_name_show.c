
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PAGE_SIZE ;
 int applesmc_get_key_at_index (int ,char*) ;
 int applesmc_lock ;
 int key_at_index ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t applesmc_key_at_index_name_show(struct device *dev,
    struct device_attribute *attr, char *sysfsbuf)
{
 char key[5];
 int ret;

 mutex_lock(&applesmc_lock);

 ret = applesmc_get_key_at_index(key_at_index, key);

 mutex_unlock(&applesmc_lock);

 if (!ret && key[0])
  return snprintf(sysfsbuf, PAGE_SIZE, "%s\n", key);
 else
  return -EINVAL;
}
