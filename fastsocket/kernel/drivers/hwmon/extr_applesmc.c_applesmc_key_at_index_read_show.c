
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int applesmc_get_key_at_index (int ,char*) ;
 int applesmc_get_key_type (char*,char*) ;
 int applesmc_lock ;
 int applesmc_read_key (char*,char*,char) ;
 int key_at_index ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t applesmc_key_at_index_read_show(struct device *dev,
    struct device_attribute *attr, char *sysfsbuf)
{
 char key[5];
 char info[6];
 int ret;

 mutex_lock(&applesmc_lock);

 ret = applesmc_get_key_at_index(key_at_index, key);

 if (ret || !key[0]) {
  mutex_unlock(&applesmc_lock);

  return -EINVAL;
 }

 ret = applesmc_get_key_type(key, info);

 if (ret) {
  mutex_unlock(&applesmc_lock);

  return ret;
 }





 ret = applesmc_read_key(key, sysfsbuf, info[0]);

 mutex_unlock(&applesmc_lock);

 if (!ret) {
  return info[0];
 } else {
  return ret;
 }
}
