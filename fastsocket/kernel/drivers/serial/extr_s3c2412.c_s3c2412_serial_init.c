
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s3c2412_serial_driver ;
 int s3c2412_uart_inf ;
 int s3c24xx_serial_init (int *,int *) ;

__attribute__((used)) static inline int s3c2412_serial_init(void)
{
 return s3c24xx_serial_init(&s3c2412_serial_driver, &s3c2412_uart_inf);
}
