
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {int lock; } ;
typedef int irda_speed_t ;
typedef int irda_module_t ;



 int IRDA_TX_4MBPS ;
 int IRMSEL ;
 int IRMSEL_HP ;
 int IRMSEL_SHARP ;
 int IRMSEL_TEMIC ;

 int SIUIRSEL ;

 int TMICMODE ;
 int TMICTX ;
 int siu_read (struct uart_port*,int ) ;
 struct uart_port* siu_uart_ports ;
 int siu_write (struct uart_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void vr41xx_select_irda_module(irda_module_t module, irda_speed_t speed)
{
 struct uart_port *port;
 unsigned long flags;
 uint8_t irsel;

 port = &siu_uart_ports[0];

 spin_lock_irqsave(&port->lock, flags);

 irsel = siu_read(port, SIUIRSEL);
 irsel &= ~(IRMSEL | TMICTX | TMICMODE);
 switch (module) {
 case 129:
  irsel |= IRMSEL_SHARP;
  break;
 case 128:
  irsel |= IRMSEL_TEMIC | TMICMODE;
  if (speed == IRDA_TX_4MBPS)
   irsel |= TMICTX;
  break;
 case 130:
  irsel |= IRMSEL_HP;
  break;
 default:
  break;
 }
 siu_write(port, SIUIRSEL, irsel);

 spin_unlock_irqrestore(&port->lock, flags);
}
