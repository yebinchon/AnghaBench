
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int i2o_bus_scan (struct i2o_device*) ;
 int osm_warn (char*,int) ;
 struct i2o_device* to_i2o_device (struct device*) ;

__attribute__((used)) static ssize_t i2o_bus_store_scan(struct device *d,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2o_device *i2o_dev = to_i2o_device(d);
 int rc;

 if ((rc = i2o_bus_scan(i2o_dev)))
  osm_warn("bus scan failed %d\n", rc);

 return count;
}
