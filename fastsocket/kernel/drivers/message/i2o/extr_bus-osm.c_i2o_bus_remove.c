
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tid; } ;
struct i2o_device {TYPE_1__ lct_data; } ;
struct device {int dummy; } ;


 int dev_attr_scan ;
 int device_remove_file (struct device*,int *) ;
 int osm_info (char*,int ) ;
 int put_device (struct device*) ;
 struct i2o_device* to_i2o_device (struct device*) ;

__attribute__((used)) static int i2o_bus_remove(struct device *dev)
{
 struct i2o_device *i2o_dev = to_i2o_device(dev);

 device_remove_file(dev, &dev_attr_scan);

 put_device(dev);

 osm_info("device removed (TID: %03x)\n", i2o_dev->lct_data.tid);

 return 0;
}
