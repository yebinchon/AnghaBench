
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int dbg (char*,struct platform_device*) ;
 int s3c24xx_serial_probe (struct platform_device*,int *) ;
 int s3c6400_uart_inf ;

__attribute__((used)) static int s3c6400_serial_probe(struct platform_device *dev)
{
 dbg("s3c6400_serial_probe: dev=%p\n", dev);
 return s3c24xx_serial_probe(dev, &s3c6400_uart_inf);
}
