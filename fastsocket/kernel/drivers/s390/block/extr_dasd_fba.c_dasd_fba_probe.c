
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;


 int dasd_fba_discipline ;
 int dasd_generic_probe (struct ccw_device*,int *) ;

__attribute__((used)) static int
dasd_fba_probe(struct ccw_device *cdev)
{
 return dasd_generic_probe(cdev, &dasd_fba_discipline);
}
