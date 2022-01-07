
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int real_raw; int raw; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;
struct sx_port {int line; TYPE_3__* board; TYPE_2__ gs; } ;
struct TYPE_6__ {scalar_t__ base; } ;


 scalar_t__ CHAN_OFFSET (struct sx_port*,int ) ;
 int SX_DEBUG_RECEIVE ;
 int do_gettimeofday (struct timeval*) ;
 int func_enter2 () ;
 int func_exit () ;
 int hi_rxbuf ;
 int hi_rxipos ;
 int hi_rxopos ;
 int memcpy_fromio (unsigned char*,scalar_t__,int) ;
 int read_sx_byte (TYPE_3__*,scalar_t__) ;
 int sx_dprintk (int ,char*,int,...) ;
 int sx_read_channel_byte (struct sx_port*,int ) ;
 int sx_write_channel_byte (struct sx_port*,int ,int) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_prepare_flip_string (struct tty_struct*,unsigned char**,int) ;

__attribute__((used)) static inline void sx_receive_chars(struct sx_port *port)
{
 int c;
 int rx_op;
 struct tty_struct *tty;
 int copied = 0;
 unsigned char *rp;

 func_enter2();
 tty = port->gs.port.tty;
 while (1) {
  rx_op = sx_read_channel_byte(port, hi_rxopos);
  c = (sx_read_channel_byte(port, hi_rxipos) - rx_op) & 0xff;

  sx_dprintk(SX_DEBUG_RECEIVE, "rxop=%d, c = %d.\n", rx_op, c);


  if (rx_op + c > 0x100)
   c = 0x100 - rx_op;

  sx_dprintk(SX_DEBUG_RECEIVE, "c = %d.\n", c);



  c = tty_prepare_flip_string(tty, &rp, c);

  sx_dprintk(SX_DEBUG_RECEIVE, "c = %d.\n", c);


  if (c == 0)
   break;

  sx_dprintk(SX_DEBUG_RECEIVE, "Copying over %d chars. First is "
    "%d at %lx\n", c, read_sx_byte(port->board,
     CHAN_OFFSET(port, hi_rxbuf) + rx_op),
    CHAN_OFFSET(port, hi_rxbuf));
  memcpy_fromio(rp, port->board->base +
    CHAN_OFFSET(port, hi_rxbuf) + rx_op, c);





  sx_write_channel_byte(port, hi_rxopos, (rx_op + c) & 0xff);

  copied += c;
 }
 if (copied) {
  struct timeval tv;

  do_gettimeofday(&tv);
  sx_dprintk(SX_DEBUG_RECEIVE, "pushing flipq port %d (%3d "
    "chars): %d.%06d  (%d/%d)\n", port->line,
    copied, (int)(tv.tv_sec % 60), (int)tv.tv_usec,
    tty->raw, tty->real_raw);



  tty_flip_buffer_push(tty);

 }

 func_exit();
}
