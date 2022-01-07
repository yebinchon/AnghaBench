
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 int S3C2410_UCON ;
 unsigned int S3C2410_UCON_SBREAK ;
 unsigned int rd_regl (struct uart_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr_regl (struct uart_port*,int ,unsigned int) ;

__attribute__((used)) static void s3c24xx_serial_break_ctl(struct uart_port *port, int break_state)
{
 unsigned long flags;
 unsigned int ucon;

 spin_lock_irqsave(&port->lock, flags);

 ucon = rd_regl(port, S3C2410_UCON);

 if (break_state)
  ucon |= S3C2410_UCON_SBREAK;
 else
  ucon &= ~S3C2410_UCON_SBREAK;

 wr_regl(port, S3C2410_UCON, ucon);

 spin_unlock_irqrestore(&port->lock, flags);
}
