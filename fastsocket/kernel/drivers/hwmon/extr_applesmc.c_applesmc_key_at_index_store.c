
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int applesmc_lock ;
 int key_at_index ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t applesmc_key_at_index_store(struct device *dev,
 struct device_attribute *attr, const char *sysfsbuf, size_t count)
{
 mutex_lock(&applesmc_lock);

 key_at_index = simple_strtoul(sysfsbuf, ((void*)0), 10);

 mutex_unlock(&applesmc_lock);

 return count;
}
