
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int hdaps_calibrate () ;
 int hdaps_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t hdaps_calibrate_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 mutex_lock(&hdaps_mtx);
 hdaps_calibrate();
 mutex_unlock(&hdaps_mtx);

 return count;
}
