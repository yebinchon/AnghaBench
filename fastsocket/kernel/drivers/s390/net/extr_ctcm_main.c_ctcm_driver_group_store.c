
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int driver_id; } ;


 int ccwgroup_create_from_string (int ,int ,int *,int,char const*) ;
 int ctcm_ccw_driver ;
 TYPE_1__ ctcm_group_driver ;
 int ctcm_root_dev ;

__attribute__((used)) static ssize_t
ctcm_driver_group_store(struct device_driver *ddrv, const char *buf,
   size_t count)
{
 int err;

 err = ccwgroup_create_from_string(ctcm_root_dev,
       ctcm_group_driver.driver_id,
       &ctcm_ccw_driver, 2, buf);
 return err ? err : count;
}
