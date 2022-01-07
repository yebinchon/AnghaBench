
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tty; } ;
struct TYPE_6__ {int xmit_cnt; int xmit_tail; int xmit_buf; int wakeup_chars; TYPE_2__ port; } ;
struct sx_port {int locks; TYPE_3__ gs; TYPE_1__* board; } ;
struct TYPE_4__ {scalar_t__ base; } ;


 scalar_t__ CHAN_OFFSET (struct sx_port*,int ) ;
 int SERIAL_XMIT_SIZE ;
 int SX_DEBUG_TRANSMIT ;
 int SX_PORT_TRANSMIT_LOCK ;
 int clear_bit (int ,int *) ;
 int func_enter2 () ;
 int func_exit () ;
 int hi_txbuf ;
 int hi_txipos ;
 int hi_txopos ;
 int memcpy_toio (scalar_t__,int,int) ;
 int sx_disable_tx_interrupts (struct sx_port*) ;
 int sx_dprintk (int ,char*,...) ;
 int sx_read_channel_byte (struct sx_port*,int ) ;
 int sx_write_channel_byte (struct sx_port*,int ,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int tty_wakeup (scalar_t__) ;

__attribute__((used)) static void sx_transmit_chars(struct sx_port *port)
{
 int c;
 int tx_ip;
 int txroom;

 func_enter2();
 sx_dprintk(SX_DEBUG_TRANSMIT, "Port %p: transmit %d chars\n",
   port, port->gs.xmit_cnt);

 if (test_and_set_bit(SX_PORT_TRANSMIT_LOCK, &port->locks)) {
  return;
 }

 while (1) {
  c = port->gs.xmit_cnt;

  sx_dprintk(SX_DEBUG_TRANSMIT, "Copying %d ", c);
  tx_ip = sx_read_channel_byte(port, hi_txipos);



  txroom = (sx_read_channel_byte(port, hi_txopos) - tx_ip - 1) &
    0xff;


  if (c > txroom)
   c = txroom;
  sx_dprintk(SX_DEBUG_TRANSMIT, " %d(%d) ", c, txroom);


  if (c > 0x100 - tx_ip)
   c = 0x100 - tx_ip;

  sx_dprintk(SX_DEBUG_TRANSMIT, " %d(%d) ", c, 0x100 - tx_ip);


  if (c > SERIAL_XMIT_SIZE - port->gs.xmit_tail)
   c = SERIAL_XMIT_SIZE - port->gs.xmit_tail;

  sx_dprintk(SX_DEBUG_TRANSMIT, " %d(%ld) \n",
    c, SERIAL_XMIT_SIZE - port->gs.xmit_tail);



  if (c == 0)
   break;

  memcpy_toio(port->board->base + CHAN_OFFSET(port, hi_txbuf) +
   tx_ip, port->gs.xmit_buf + port->gs.xmit_tail, c);


  sx_write_channel_byte(port, hi_txipos, (tx_ip + c) & 0xff);


  port->gs.xmit_tail = (port->gs.xmit_tail + c) &
    (SERIAL_XMIT_SIZE - 1);




  port->gs.xmit_cnt -= c;
 }

 if (port->gs.xmit_cnt == 0) {
  sx_disable_tx_interrupts(port);
 }

 if ((port->gs.xmit_cnt <= port->gs.wakeup_chars) && port->gs.port.tty) {
  tty_wakeup(port->gs.port.tty);
  sx_dprintk(SX_DEBUG_TRANSMIT, "Waking up.... ldisc (%d)....\n",
    port->gs.wakeup_chars);
 }

 clear_bit(SX_PORT_TRANSMIT_LOCK, &port->locks);
 func_exit();
}
