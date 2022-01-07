
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int polling_delay; } ;


 int interval ;
 int kernelmode ;
 int pr_notice (char*) ;
 int thermal_zone_device_update (TYPE_1__*) ;
 TYPE_1__* thz_dev ;

__attribute__((used)) static inline void acerhdf_enable_kernelmode(void)
{
 kernelmode = 1;

 thz_dev->polling_delay = interval*1000;
 thermal_zone_device_update(thz_dev);
 pr_notice("kernel mode fan control ON\n");
}
