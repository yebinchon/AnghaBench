
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_device {int dummy; } ;


 int pps_unregister_cdev (struct pps_device*) ;

void pps_unregister_source(struct pps_device *pps)
{
 pps_unregister_cdev(pps);



}
