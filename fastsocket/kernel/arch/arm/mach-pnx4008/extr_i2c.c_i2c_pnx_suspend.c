
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
typedef int pm_message_t ;


 int set_clock_run (struct platform_device*) ;

__attribute__((used)) static int i2c_pnx_suspend(struct platform_device *pdev, pm_message_t state)
{
 int retval = 0;



 return retval;
}
