
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct a2232status {int Command; int OutFlush; int Setup; int Param; unsigned int SoftFlow; scalar_t__ OutDisable; } ;
struct TYPE_6__ {scalar_t__ Crystal; } ;
struct a2232memory {TYPE_1__ Common; } ;
struct TYPE_9__ {int flags; TYPE_3__* tty; } ;
struct TYPE_10__ {unsigned int baud; TYPE_4__ port; } ;
struct a2232_port {TYPE_5__ gs; int which_port_on_a2232; int which_a2232; } ;
struct TYPE_8__ {TYPE_2__* termios; } ;
struct TYPE_7__ {unsigned int c_cflag; int c_iflag; } ;


 int A2232CMD_CMask ;
 int A2232CMD_Close ;
 int A2232CMD_Enable ;
 int A2232CMD_EvenParity ;
 int A2232CMD_NoParity ;
 int A2232CMD_OddParity ;
 int A2232CMD_Open ;
 int A2232PARAM_5Bit ;
 int A2232PARAM_6Bit ;
 int A2232PARAM_7Bit ;
 int A2232PARAM_8Bit ;
 int A2232PARAM_B9600 ;
 int A2232PARAM_RcvBaud ;
 int A2232_BAUD_TABLE_NOAVAIL ;
 int A2232_BAUD_TABLE_NUM_RATES ;
 scalar_t__ A2232_TURBO ;
 int ASYNC_CHECK_CD ;
 unsigned int CLOCAL ;
 unsigned int CRTSCTS ;




 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 int IXOFF ;
 unsigned int PARENB ;
 unsigned int PARODD ;
 unsigned int* a2232_baud_table ;
 struct a2232memory* a2232mem (int ) ;
 struct a2232status* a2232stat (int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ,int ,...) ;

__attribute__((used)) static int a2232_set_real_termios(void *ptr)
{
 unsigned int cflag, baud, chsize, stopb, parity, softflow;
 int rate;
 int a2232_param, a2232_cmd;
 unsigned long flags;
 unsigned int i;
 struct a2232_port *port = ptr;
 volatile struct a2232status *status;
 volatile struct a2232memory *mem;

 if (!port->gs.port.tty || !port->gs.port.tty->termios) return 0;

 status = a2232stat(port->which_a2232, port->which_port_on_a2232);
 mem = a2232mem(port->which_a2232);

 a2232_param = a2232_cmd = 0;


 baud = port->gs.baud;
 if (baud == 0) {

  local_irq_save(flags);

  status->Command = ( (status->Command & ~A2232CMD_CMask) |
     A2232CMD_Close );
  status->OutFlush = -1;
  status->Setup = -1;

  local_irq_restore(flags);
  return 0;
 }

 rate = A2232_BAUD_TABLE_NOAVAIL;
 for (i=0; i < A2232_BAUD_TABLE_NUM_RATES * 3; i += 3){
  if (a2232_baud_table[i] == baud){
   if (mem->Common.Crystal == A2232_TURBO) rate = a2232_baud_table[i+2];
   else rate = a2232_baud_table[i+1];
  }
 }
 if (rate == A2232_BAUD_TABLE_NOAVAIL){
  printk("a2232: Board %d Port %d unsupported baud rate: %d baud. Using another.\n",port->which_a2232,port->which_port_on_a2232,baud);

  rate = A2232PARAM_B9600;
 }
 a2232_param |= rate;

 cflag = port->gs.port.tty->termios->c_cflag;


 chsize = cflag & CSIZE;
 switch (chsize){
  case 128: a2232_param |= A2232PARAM_8Bit; break;
  case 129: a2232_param |= A2232PARAM_7Bit; break;
  case 130: a2232_param |= A2232PARAM_6Bit; break;
  case 131: a2232_param |= A2232PARAM_5Bit; break;
  default: printk("a2232: Board %d Port %d unsupported character size: %d. Using 8 data bits.\n",
     port->which_a2232,port->which_port_on_a2232,chsize);
    a2232_param |= A2232PARAM_8Bit; break;
 }


 stopb = cflag & CSTOPB;
 if (stopb){
  printk("a2232: Board %d Port %d 2 stop bits unsupported. Using 1 stop bit.\n",
   port->which_a2232,port->which_port_on_a2232);
 }


 if (!(cflag & CRTSCTS)){

  printk("a2232: Board %d Port %d cannot switch off firmware-implemented RTS/CTS hardware flow control.\n",
   port->which_a2232,port->which_port_on_a2232);

 }
 softflow = !!( port->gs.port.tty->termios->c_iflag & IXOFF );


 parity = cflag & (PARENB | PARODD);
 if (parity & PARENB){
  if (parity & PARODD){
   a2232_cmd |= A2232CMD_OddParity;
  }
  else{
   a2232_cmd |= A2232CMD_EvenParity;
  }
 }
 else a2232_cmd |= A2232CMD_NoParity;




 if (cflag & CLOCAL)
  port->gs.port.flags &= ~ASYNC_CHECK_CD;
 else
  port->gs.port.flags |= ASYNC_CHECK_CD;



 local_irq_save(flags);

 status->Param = a2232_param | A2232PARAM_RcvBaud;
 status->Command = a2232_cmd | A2232CMD_Open | A2232CMD_Enable;
 status->SoftFlow = softflow;
 status->OutDisable = 0;
 status->Setup = -1;

 local_irq_restore(flags);
 return 0;
}
