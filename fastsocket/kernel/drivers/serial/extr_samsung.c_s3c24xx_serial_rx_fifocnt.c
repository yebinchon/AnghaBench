
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_uart_port {struct s3c24xx_uart_info* info; } ;
struct s3c24xx_uart_info {unsigned long rx_fifofull; int fifosize; unsigned long rx_fifomask; unsigned long rx_fifoshift; } ;



__attribute__((used)) static int s3c24xx_serial_rx_fifocnt(struct s3c24xx_uart_port *ourport,
         unsigned long ufstat)
{
 struct s3c24xx_uart_info *info = ourport->info;

 if (ufstat & info->rx_fifofull)
  return info->fifosize;

 return (ufstat & info->rx_fifomask) >> info->rx_fifoshift;
}
