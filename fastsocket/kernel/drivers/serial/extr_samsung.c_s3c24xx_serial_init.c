
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_uart_info {int dummy; } ;
struct platform_driver {int resume; int suspend; } ;


 int dbg (char*,struct platform_driver*,struct s3c24xx_uart_info*) ;
 int platform_driver_register (struct platform_driver*) ;
 int s3c24xx_serial_resume ;
 int s3c24xx_serial_suspend ;

int s3c24xx_serial_init(struct platform_driver *drv,
   struct s3c24xx_uart_info *info)
{
 dbg("s3c24xx_serial_init(%p,%p)\n", drv, info);






 return platform_driver_register(drv);
}
