
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pps_device {TYPE_1__* dev; int id; } ;
struct TYPE_2__ {int devt; } ;


 int device_destroy (int ,int ) ;
 int pps_class ;
 int pr_debug (char*,int ) ;

void pps_unregister_cdev(struct pps_device *pps)
{
 pr_debug("unregistering pps%d\n", pps->id);
 device_destroy(pps_class, pps->dev->devt);
}
