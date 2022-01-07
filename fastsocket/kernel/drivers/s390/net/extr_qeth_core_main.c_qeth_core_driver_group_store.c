
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int driver_id; } ;


 TYPE_1__ qeth_core_ccwgroup_driver ;
 int qeth_core_driver_group (char const*,int ,int ) ;
 int qeth_core_root_dev ;

__attribute__((used)) static ssize_t
qeth_core_driver_group_store(struct device_driver *ddrv, const char *buf,
      size_t count)
{
 int err;
 err = qeth_core_driver_group(buf, qeth_core_root_dev,
     qeth_core_ccwgroup_driver.driver_id);
 if (err)
  return err;
 else
  return count;
}
