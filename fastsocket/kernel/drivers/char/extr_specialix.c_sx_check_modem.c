
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int hw_stopped; } ;
struct TYPE_2__ {int open_wait; struct tty_struct* tty; } ;
struct specialix_port {scalar_t__ xmit_cnt; scalar_t__ wakeup_chars; int IER; TYPE_1__ port; } ;
struct specialix_board {int dummy; } ;


 int CD186x_IER ;
 int CD186x_MCR ;
 int CD186x_MSVR ;
 int IER_TXRDY ;
 unsigned char MCR_CDCHG ;
 unsigned char MCR_CTSCHG ;
 unsigned char MCR_DSSXHG ;
 int MSVR_CD ;
 int MSVR_CTS ;
 int MSVR_DSR ;
 int SX_DEBUG_SIGNALS ;
 int dprintk (int ,char*) ;
 struct specialix_port* sx_get_port (struct specialix_board*,char*) ;
 int sx_in (struct specialix_board*,int ) ;
 int sx_out (struct specialix_board*,int ,int ) ;
 int tty_hangup (struct tty_struct*) ;
 int tty_wakeup (struct tty_struct*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void sx_check_modem(struct specialix_board *bp)
{
 struct specialix_port *port;
 struct tty_struct *tty;
 unsigned char mcr;
 int msvr_cd;

 dprintk(SX_DEBUG_SIGNALS, "Modem intr. ");
 port = sx_get_port(bp, "Modem");
 if (port == ((void*)0))
  return;

 tty = port->port.tty;

 mcr = sx_in(bp, CD186x_MCR);

 if ((mcr & MCR_CDCHG)) {
  dprintk(SX_DEBUG_SIGNALS, "CD just changed... ");
  msvr_cd = sx_in(bp, CD186x_MSVR) & MSVR_CD;
  if (msvr_cd) {
   dprintk(SX_DEBUG_SIGNALS, "Waking up guys in open.\n");
   wake_up_interruptible(&port->port.open_wait);
  } else {
   dprintk(SX_DEBUG_SIGNALS, "Sending HUP.\n");
   tty_hangup(tty);
  }
 }
 sx_out(bp, CD186x_MCR, 0);
}
