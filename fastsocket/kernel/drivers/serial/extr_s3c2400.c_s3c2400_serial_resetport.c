
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;
struct s3c2410_uartcfg {int ucon; int ulcon; int ufcon; } ;


 int S3C2410_UCON ;
 int S3C2410_UFCON ;
 int S3C2410_UFCON_RESETBOTH ;
 int S3C2410_ULCON ;
 int dbg (char*,struct uart_port*,int ,struct s3c2410_uartcfg*) ;
 int wr_regl (struct uart_port*,int ,int) ;

__attribute__((used)) static int s3c2400_serial_resetport(struct uart_port *port,
        struct s3c2410_uartcfg *cfg)
{
 dbg("s3c2400_serial_resetport: port=%p (%08lx), cfg=%p\n",
     port, port->mapbase, cfg);

 wr_regl(port, S3C2410_UCON, cfg->ucon);
 wr_regl(port, S3C2410_ULCON, cfg->ulcon);



 wr_regl(port, S3C2410_UFCON, cfg->ufcon | S3C2410_UFCON_RESETBOTH);
 wr_regl(port, S3C2410_UFCON, cfg->ufcon);

 return 0;
}
