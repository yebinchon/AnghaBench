
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;
struct s3c2410_uartcfg {unsigned long ucon; unsigned long ulcon; unsigned long ufcon; } ;


 int S3C2410_UCON ;
 int S3C2410_UFCON ;
 unsigned long S3C2410_UFCON_RESETBOTH ;
 int S3C2410_ULCON ;
 unsigned long S3C6400_UCON_CLKMASK ;
 int dbg (char*,struct uart_port*,int ,struct s3c2410_uartcfg*) ;
 unsigned long rd_regl (struct uart_port*,int ) ;
 int wr_regl (struct uart_port*,int ,unsigned long) ;

__attribute__((used)) static int s3c6400_serial_resetport(struct uart_port *port,
        struct s3c2410_uartcfg *cfg)
{
 unsigned long ucon = rd_regl(port, S3C2410_UCON);

 dbg("s3c6400_serial_resetport: port=%p (%08lx), cfg=%p\n",
     port, port->mapbase, cfg);



 ucon &= S3C6400_UCON_CLKMASK;

 wr_regl(port, S3C2410_UCON, ucon | cfg->ucon);
 wr_regl(port, S3C2410_ULCON, cfg->ulcon);



 wr_regl(port, S3C2410_UFCON, cfg->ufcon | S3C2410_UFCON_RESETBOTH);
 wr_regl(port, S3C2410_UFCON, cfg->ufcon);

 return 0;
}
