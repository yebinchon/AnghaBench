
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int S3C2410_UTRSTAT ;
 int S3C2410_UTRSTAT_TXE ;
 int rd_regl (struct uart_port*,int ) ;

__attribute__((used)) static int s3c24xx_serial_txempty_nofifo(struct uart_port *port)
{
 return (rd_regl(port, S3C2410_UTRSTAT) & S3C2410_UTRSTAT_TXE);
}
