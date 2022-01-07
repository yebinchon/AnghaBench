
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct device {TYPE_1__ power; } ;


 int DPM_ON ;
 int pm_runtime_init (struct device*) ;

void device_pm_init(struct device *dev)
{
 dev->power.status = DPM_ON;
 pm_runtime_init(dev);
}
