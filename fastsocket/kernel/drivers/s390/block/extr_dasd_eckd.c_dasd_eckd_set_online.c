
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;


 int dasd_eckd_discipline ;
 int dasd_generic_set_online (struct ccw_device*,int *) ;

__attribute__((used)) static int
dasd_eckd_set_online(struct ccw_device *cdev)
{
 return dasd_generic_set_online(cdev, &dasd_eckd_discipline);
}
