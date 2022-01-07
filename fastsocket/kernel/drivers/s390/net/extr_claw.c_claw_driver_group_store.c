
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int driver_id; } ;


 int ccwgroup_create_from_string (int ,int ,int *,int,char const*) ;
 int claw_ccw_driver ;
 TYPE_1__ claw_group_driver ;
 int claw_root_dev ;

__attribute__((used)) static ssize_t
claw_driver_group_store(struct device_driver *ddrv, const char *buf,
   size_t count)
{
 int err;
 err = ccwgroup_create_from_string(claw_root_dev,
       claw_group_driver.driver_id,
       &claw_ccw_driver, 3, buf);
 return err ? err : count;
}
