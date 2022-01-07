
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct brd_device {int brd_disk; } ;
typedef int dev_t ;


 int ENOMEM ;
 struct kobject* ERR_PTR (int ) ;
 int MINORMASK ;
 int brd_devices_mutex ;
 struct brd_device* brd_init_one (int) ;
 struct kobject* get_disk (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct kobject *brd_probe(dev_t dev, int *part, void *data)
{
 struct brd_device *brd;
 struct kobject *kobj;

 mutex_lock(&brd_devices_mutex);
 brd = brd_init_one(dev & MINORMASK);
 kobj = brd ? get_disk(brd->brd_disk) : ERR_PTR(-ENOMEM);
 mutex_unlock(&brd_devices_mutex);

 *part = 0;
 return kobj;
}
