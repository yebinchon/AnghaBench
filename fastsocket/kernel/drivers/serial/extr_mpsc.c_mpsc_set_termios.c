
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct uart_port {int uartclk; } ;
struct TYPE_2__ {int read_status_mask; int ignore_status_mask; int lock; } ;
struct mpsc_port_info {int c_iflag; int c_cflag; int rcv_data; TYPE_1__ port; } ;
struct ktermios {int c_iflag; int c_cflag; } ;


 int BRKINT ;
 int CMSPAR ;
 int CREAD ;




 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int MPSC_CHR_2_PAR_EVEN ;
 int MPSC_CHR_2_PAR_MARK ;
 int MPSC_CHR_2_PAR_ODD ;
 int MPSC_CHR_2_PAR_SPACE ;
 int MPSC_MPCR_CL_5 ;
 int MPSC_MPCR_CL_6 ;
 int MPSC_MPCR_CL_7 ;
 int MPSC_MPCR_CL_8 ;
 int MPSC_MPCR_SBL_1 ;
 int MPSC_MPCR_SBL_2 ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int SDMA_DESC_CMDSTAT_BR ;
 int SDMA_DESC_CMDSTAT_FR ;
 int SDMA_DESC_CMDSTAT_OR ;
 int SDMA_DESC_CMDSTAT_PE ;
 int mpsc_set_baudrate (struct mpsc_port_info*,int ) ;
 int mpsc_set_char_length (struct mpsc_port_info*,int ) ;
 int mpsc_set_parity (struct mpsc_port_info*,int ) ;
 int mpsc_set_stop_bit_length (struct mpsc_port_info*,int ) ;
 int mpsc_start_rx (struct mpsc_port_info*) ;
 int mpsc_stop_rx (struct uart_port*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int ) ;
 int uart_update_timeout (struct uart_port*,int,int ) ;

__attribute__((used)) static void mpsc_set_termios(struct uart_port *port, struct ktermios *termios,
   struct ktermios *old)
{
 struct mpsc_port_info *pi = (struct mpsc_port_info *)port;
 u32 baud;
 ulong flags;
 u32 chr_bits, stop_bits, par;

 pi->c_iflag = termios->c_iflag;
 pi->c_cflag = termios->c_cflag;

 switch (termios->c_cflag & CSIZE) {
 case 131:
  chr_bits = MPSC_MPCR_CL_5;
  break;
 case 130:
  chr_bits = MPSC_MPCR_CL_6;
  break;
 case 129:
  chr_bits = MPSC_MPCR_CL_7;
  break;
 case 128:
 default:
  chr_bits = MPSC_MPCR_CL_8;
  break;
 }

 if (termios->c_cflag & CSTOPB)
  stop_bits = MPSC_MPCR_SBL_2;
 else
  stop_bits = MPSC_MPCR_SBL_1;

 par = MPSC_CHR_2_PAR_EVEN;
 if (termios->c_cflag & PARENB)
  if (termios->c_cflag & PARODD)
   par = MPSC_CHR_2_PAR_ODD;
 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk);

 spin_lock_irqsave(&pi->port.lock, flags);

 uart_update_timeout(port, termios->c_cflag, baud);

 mpsc_set_char_length(pi, chr_bits);
 mpsc_set_stop_bit_length(pi, stop_bits);
 mpsc_set_parity(pi, par);
 mpsc_set_baudrate(pi, baud);


 pi->port.read_status_mask = SDMA_DESC_CMDSTAT_OR;

 if (termios->c_iflag & INPCK)
  pi->port.read_status_mask |= SDMA_DESC_CMDSTAT_PE
   | SDMA_DESC_CMDSTAT_FR;

 if (termios->c_iflag & (BRKINT | PARMRK))
  pi->port.read_status_mask |= SDMA_DESC_CMDSTAT_BR;


 pi->port.ignore_status_mask = 0;

 if (termios->c_iflag & IGNPAR)
  pi->port.ignore_status_mask |= SDMA_DESC_CMDSTAT_PE
   | SDMA_DESC_CMDSTAT_FR;

 if (termios->c_iflag & IGNBRK) {
  pi->port.ignore_status_mask |= SDMA_DESC_CMDSTAT_BR;

  if (termios->c_iflag & IGNPAR)
   pi->port.ignore_status_mask |= SDMA_DESC_CMDSTAT_OR;
 }

 if ((termios->c_cflag & CREAD)) {
  if (!pi->rcv_data) {
   pi->rcv_data = 1;
   mpsc_start_rx(pi);
  }
 } else if (pi->rcv_data) {
  mpsc_stop_rx(port);
  pi->rcv_data = 0;
 }

 spin_unlock_irqrestore(&pi->port.lock, flags);
}
