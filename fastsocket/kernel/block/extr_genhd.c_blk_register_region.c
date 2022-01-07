
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
typedef int dev_t ;


 int bdev_map ;
 int kobj_map (int ,int ,unsigned long,struct module*,struct kobject* (*) (int ,int*,void*),int (*) (int ,void*),void*) ;

void blk_register_region(dev_t devt, unsigned long range, struct module *module,
    struct kobject *(*probe)(dev_t, int *, void *),
    int (*lock)(dev_t, void *), void *data)
{
 kobj_map(bdev_map, devt, range, module, probe, lock, data);
}
