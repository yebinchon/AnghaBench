
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pm_cpu_prep ;
 int pm_cpu_sleep ;
 int pm_uart_udivslot ;
 int s3c64xx_cpu_suspend ;
 int s3c64xx_pm_prepare ;

__attribute__((used)) static int s3c64xx_pm_init(void)
{
 pm_cpu_prep = s3c64xx_pm_prepare;
 pm_cpu_sleep = s3c64xx_cpu_suspend;
 pm_uart_udivslot = 1;
 return 0;
}
