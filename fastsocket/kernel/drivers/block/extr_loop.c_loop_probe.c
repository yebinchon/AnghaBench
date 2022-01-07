
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_disk; } ;
struct kobject {int dummy; } ;
typedef int dev_t ;


 int ENOMEM ;
 struct kobject* ERR_PTR (int ) ;
 int MINORMASK ;
 struct kobject* get_disk (int ) ;
 int loop_devices_mutex ;
 struct loop_device* loop_init_one (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct kobject *loop_probe(dev_t dev, int *part, void *data)
{
 struct loop_device *lo;
 struct kobject *kobj;

 mutex_lock(&loop_devices_mutex);
 lo = loop_init_one(dev & MINORMASK);
 kobj = lo ? get_disk(lo->lo_disk) : ERR_PTR(-ENOMEM);
 mutex_unlock(&loop_devices_mutex);

 *part = 0;
 return kobj;
}
