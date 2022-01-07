
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int s3c24a0_uart_inf ;
 int s3c24xx_serial_probe (struct platform_device*,int *) ;

__attribute__((used)) static int s3c24a0_serial_probe(struct platform_device *dev)
{
 return s3c24xx_serial_probe(dev, &s3c24a0_uart_inf);
}
