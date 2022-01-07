
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * release; int * bus; } ;
struct i2o_device {TYPE_1__ device; int lock; int list; } ;


 int ENOMEM ;
 struct i2o_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int i2o_bus_type ;
 int i2o_device_release ;
 struct i2o_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct i2o_device *i2o_device_alloc(void)
{
 struct i2o_device *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&dev->list);
 mutex_init(&dev->lock);

 dev->device.bus = &i2o_bus_type;
 dev->device.release = &i2o_device_release;

 return dev;
}
