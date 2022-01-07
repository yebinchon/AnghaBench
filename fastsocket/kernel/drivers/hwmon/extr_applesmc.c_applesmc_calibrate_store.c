
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int applesmc_calibrate () ;
 int applesmc_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t applesmc_calibrate_store(struct device *dev,
 struct device_attribute *attr, const char *sysfsbuf, size_t count)
{
 mutex_lock(&applesmc_lock);
 applesmc_calibrate();
 mutex_unlock(&applesmc_lock);

 return count;
}
