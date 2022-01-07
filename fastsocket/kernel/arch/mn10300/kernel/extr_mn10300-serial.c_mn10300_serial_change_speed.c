
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int flags; int custom_divisor; unsigned long uartclk; int read_status_mask; int ignore_status_mask; int lock; } ;
struct mn10300_serial_port {unsigned long ioclk; int div_timer; int* _tmxmd; int* _tmxbr; scalar_t__ type; int tx_cts; int* _status; int* _control; TYPE_1__ uart; int name; } ;
struct ktermios {unsigned int c_cflag; int c_iflag; } ;


 int B0 ;
 int B9600 ;
 int BRKINT ;
 int BUG () ;
 int CBAUD ;
 unsigned int CMSPAR ;
 int CREAD ;
 unsigned int CRTSCTS ;


 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;


 unsigned int PARENB ;
 int PARMRK ;
 unsigned int PARODD ;
 scalar_t__ PORT_MN10300_CTS ;
 int SC01CTR_BKE ;
 int SC01CTR_CLN_7BIT ;
 int SC01CTR_CLN_8BIT ;
 int SC01CTR_PB_EVEN ;
 int SC01CTR_PB_FIXED0 ;
 int SC01CTR_PB_ODD ;
 int SC01CTR_RXE ;
 int SC01CTR_STB_2BIT ;
 int SC01CTR_TXE ;
 int SC0CTR_CK_TM2UFLOW_8 ;
 int SC0CTR_CK_TM8UFLOW_8 ;
 int SC2CTR_TWE ;
 int SC2CTR_TWS ;
 int SC2STR_CTS ;
 int TM2MD_COUNT_ENABLE ;
 int TM2MD_INIT_COUNTER ;
 int TM2MD_SRC_IOCLK ;
 int TM2MD_SRC_IOCLK_32 ;
 int TM2MD_SRC_IOCLK_8 ;
 int TM8MD_COUNT_ENABLE ;
 int TM8MD_INIT_COUNTER ;
 int TM8MD_SRC_IOCLK ;
 int TM8MD_SRC_IOCLK_32 ;
 int TM8MD_SRC_IOCLK_8 ;
 int TTY_BREAK ;
 int TTY_FRAME ;
 int TTY_NORMAL ;
 int TTY_OVERRUN ;
 int TTY_PARITY ;
 int UPF_SPD_CUST ;
 int UPF_SPD_MASK ;
 int _debug (char*,...) ;
 int _enter (char*,int ,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart_get_baud_rate (TYPE_1__*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (TYPE_1__*,int,int) ;

__attribute__((used)) static void mn10300_serial_change_speed(struct mn10300_serial_port *port,
       struct ktermios *new,
       struct ktermios *old)
{
 unsigned long flags;
 unsigned long ioclk = port->ioclk;
 unsigned cflag;
 int baud, bits, xdiv, tmp;
 u16 tmxbr, scxctr;
 u8 tmxmd, battempt;
 u8 div_timer = port->div_timer;

 _enter("%s{%lu}", port->name, ioclk);


 cflag = new->c_cflag;
 switch (cflag & CSIZE) {
 case 131: scxctr = SC01CTR_CLN_7BIT; bits = 9; break;
 case 130: scxctr = SC01CTR_CLN_8BIT; bits = 10; break;
 default: scxctr = SC01CTR_CLN_8BIT; bits = 10; break;
 }

 if (cflag & CSTOPB) {
  scxctr |= SC01CTR_STB_2BIT;
  bits++;
 }

 if (cflag & PARENB) {
  bits++;
  if (cflag & PARODD)
   scxctr |= SC01CTR_PB_ODD;




  else
   scxctr |= SC01CTR_PB_EVEN;
 }


 battempt = 0;

 if (div_timer == 129)
  scxctr |= SC0CTR_CK_TM8UFLOW_8;

 else if (div_timer == 128)
  scxctr |= SC0CTR_CK_TM2UFLOW_8;

try_alternative:
 baud = uart_get_baud_rate(&port->uart, new, old, 0,
      port->ioclk / 8);

 _debug("ALT %d [baud %d]", battempt, baud);

 if (!baud)
  baud = 9600;
 xdiv = 1;
 if (baud == 134) {
  baud = 269;
  xdiv = 2;
 }

 if (baud == 38400 &&
     (port->uart.flags & UPF_SPD_MASK) == UPF_SPD_CUST
     ) {
  _debug("CUSTOM %u", port->uart.custom_divisor);

  if (div_timer == 129) {
   if (port->uart.custom_divisor <= 65535) {
    tmxmd = TM8MD_SRC_IOCLK;
    tmxbr = port->uart.custom_divisor;
    port->uart.uartclk = ioclk;
    goto timer_okay;
   }
   if (port->uart.custom_divisor / 8 <= 65535) {
    tmxmd = TM8MD_SRC_IOCLK_8;
    tmxbr = port->uart.custom_divisor / 8;
    port->uart.custom_divisor = tmxbr * 8;
    port->uart.uartclk = ioclk / 8;
    goto timer_okay;
   }
   if (port->uart.custom_divisor / 32 <= 65535) {
    tmxmd = TM8MD_SRC_IOCLK_32;
    tmxbr = port->uart.custom_divisor / 32;
    port->uart.custom_divisor = tmxbr * 32;
    port->uart.uartclk = ioclk / 32;
    goto timer_okay;
   }

  } else if (div_timer == 128) {
   if (port->uart.custom_divisor <= 255) {
    tmxmd = TM2MD_SRC_IOCLK;
    tmxbr = port->uart.custom_divisor;
    port->uart.uartclk = ioclk;
    goto timer_okay;
   }
   if (port->uart.custom_divisor / 8 <= 255) {
    tmxmd = TM2MD_SRC_IOCLK_8;
    tmxbr = port->uart.custom_divisor / 8;
    port->uart.custom_divisor = tmxbr * 8;
    port->uart.uartclk = ioclk / 8;
    goto timer_okay;
   }
   if (port->uart.custom_divisor / 32 <= 255) {
    tmxmd = TM2MD_SRC_IOCLK_32;
    tmxbr = port->uart.custom_divisor / 32;
    port->uart.custom_divisor = tmxbr * 32;
    port->uart.uartclk = ioclk / 32;
    goto timer_okay;
   }
  }
 }

 switch (div_timer) {
 case 129:
  port->uart.uartclk = ioclk;
  tmxmd = TM8MD_SRC_IOCLK;
  tmxbr = tmp = (ioclk / (baud * xdiv) + 4) / 8 - 1;
  if (tmp > 0 && tmp <= 65535)
   goto timer_okay;

  port->uart.uartclk = ioclk / 8;
  tmxmd = TM8MD_SRC_IOCLK_8;
  tmxbr = tmp = (ioclk / (baud * 8 * xdiv) + 4) / 8 - 1;
  if (tmp > 0 && tmp <= 65535)
   goto timer_okay;

  port->uart.uartclk = ioclk / 32;
  tmxmd = TM8MD_SRC_IOCLK_32;
  tmxbr = tmp = (ioclk / (baud * 32 * xdiv) + 4) / 8 - 1;
  if (tmp > 0 && tmp <= 65535)
   goto timer_okay;
  break;

 case 128:
  port->uart.uartclk = ioclk;
  tmxmd = TM2MD_SRC_IOCLK;
  tmxbr = tmp = (ioclk / (baud * xdiv) + 4) / 8 - 1;
  if (tmp > 0 && tmp <= 255)
   goto timer_okay;

  port->uart.uartclk = ioclk / 8;
  tmxmd = TM2MD_SRC_IOCLK_8;
  tmxbr = tmp = (ioclk / (baud * 8 * xdiv) + 4) / 8 - 1;
  if (tmp > 0 && tmp <= 255)
   goto timer_okay;

  port->uart.uartclk = ioclk / 32;
  tmxmd = TM2MD_SRC_IOCLK_32;
  tmxbr = tmp = (ioclk / (baud * 32 * xdiv) + 4) / 8 - 1;
  if (tmp > 0 && tmp <= 255)
   goto timer_okay;
  break;

 default:
  BUG();
  return;
 }


 _debug("CAN'T SUPPORT");

 switch (battempt) {
 case 0:
  if (old) {
   new->c_cflag &= ~CBAUD;
   new->c_cflag |= (old->c_cflag & CBAUD);
   battempt = 1;
   goto try_alternative;
  }

 case 1:


  new->c_cflag &= ~CBAUD;
  new->c_cflag |= B9600;
  battempt = 2;
  goto try_alternative;

 default:




  new->c_cflag &= ~CBAUD;
  new->c_cflag |= B0;

  if (div_timer == 129)
   tmxmd = TM8MD_SRC_IOCLK_32;
  else if (div_timer == 128)
   tmxmd = TM2MD_SRC_IOCLK_32;
  tmxbr = 1;

  port->uart.uartclk = ioclk / 32;
  break;
 }
timer_okay:

 _debug("UARTCLK: %u / %hu", port->uart.uartclk, tmxbr);


 spin_lock_irqsave(&port->uart.lock, flags);

 uart_update_timeout(&port->uart, new->c_cflag, baud);


 switch (div_timer) {
 case 129:
  *port->_tmxmd = 0;
  *port->_tmxbr = tmxbr;
  *port->_tmxmd = TM8MD_INIT_COUNTER;
  *port->_tmxmd = tmxmd | TM8MD_COUNT_ENABLE;
  break;

 case 128:
  *port->_tmxmd = 0;
  *(volatile u8 *) port->_tmxbr = (u8) tmxbr;
  *port->_tmxmd = TM2MD_INIT_COUNTER;
  *port->_tmxmd = tmxmd | TM2MD_COUNT_ENABLE;
  break;
 }


 scxctr &= ~(SC2CTR_TWE | SC2CTR_TWS);

 if (port->type == PORT_MN10300_CTS && cflag & CRTSCTS) {



  port->tx_cts = *port->_status;

  if (port->tx_cts & SC2STR_CTS)
   scxctr |= SC2CTR_TWE;
  else
   scxctr |= SC2CTR_TWE | SC2CTR_TWS;
 }


 port->uart.read_status_mask = (1 << TTY_NORMAL) | (1 << TTY_OVERRUN);
 if (new->c_iflag & INPCK)
  port->uart.read_status_mask |=
   (1 << TTY_PARITY) | (1 << TTY_FRAME);
 if (new->c_iflag & (BRKINT | PARMRK))
  port->uart.read_status_mask |= (1 << TTY_BREAK);


 port->uart.ignore_status_mask = 0;
 if (new->c_iflag & IGNPAR)
  port->uart.ignore_status_mask |=
   (1 << TTY_PARITY) | (1 << TTY_FRAME);
 if (new->c_iflag & IGNBRK) {
  port->uart.ignore_status_mask |= (1 << TTY_BREAK);




  if (new->c_iflag & IGNPAR)
   port->uart.ignore_status_mask |= (1 << TTY_OVERRUN);
 }


 if ((new->c_cflag & CREAD) == 0)
  port->uart.ignore_status_mask |= (1 << TTY_NORMAL);

 scxctr |= *port->_control & (SC01CTR_TXE | SC01CTR_RXE | SC01CTR_BKE);
 *port->_control = scxctr;

 spin_unlock_irqrestore(&port->uart.lock, flags);
}
