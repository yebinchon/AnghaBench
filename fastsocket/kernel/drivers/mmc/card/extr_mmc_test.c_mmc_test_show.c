
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int mmc_test_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t mmc_test_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 mutex_lock(&mmc_test_lock);
 mutex_unlock(&mmc_test_lock);

 return 0;
}
