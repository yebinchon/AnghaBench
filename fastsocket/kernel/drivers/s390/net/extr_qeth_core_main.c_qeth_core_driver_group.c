
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ccwgroup_create_from_string (struct device*,unsigned long,int *,int,char const*) ;
 int qeth_ccw_driver ;

__attribute__((used)) static int qeth_core_driver_group(const char *buf, struct device *root_dev,
    unsigned long driver_id)
{
 return ccwgroup_create_from_string(root_dev, driver_id,
        &qeth_ccw_driver, 3, buf);
}
