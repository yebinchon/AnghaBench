
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tty; } ;
struct gs_port {int baud; TYPE_1__ port; int xmit_buf; int xmit_cnt; } ;


 int EINTR ;
 int EINVAL ;
 int GS_DEBUG_FLUSH ;
 int HZ ;
 unsigned long MAX_SCHEDULE_TIMEOUT ;
 int TASK_RUNNING ;
 int current ;
 int func_enter () ;
 int func_exit () ;
 int gs_dprintk (int ,char*,...) ;
 int gs_real_chars_in_buffer (int ) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (int) ;
 int msleep_interruptible (int ) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int gs_wait_tx_flushed (void * ptr, unsigned long timeout)
{
 struct gs_port *port = ptr;
 unsigned long end_jiffies;
 int jiffies_to_transmit, charsleft = 0, rv = 0;
 int rcib;

 func_enter();

 gs_dprintk (GS_DEBUG_FLUSH, "port=%p.\n", port);
 if (port) {
  gs_dprintk (GS_DEBUG_FLUSH, "xmit_cnt=%x, xmit_buf=%p, tty=%p.\n",
  port->xmit_cnt, port->xmit_buf, port->port.tty);
 }

 if (!port || port->xmit_cnt < 0 || !port->xmit_buf) {
  gs_dprintk (GS_DEBUG_FLUSH, "ERROR: !port, !port->xmit_buf or prot->xmit_cnt < 0.\n");
  func_exit();
  return -EINVAL;
 }

 rcib = gs_real_chars_in_buffer(port->port.tty);

 if(rcib <= 0) {
  gs_dprintk (GS_DEBUG_FLUSH, "nothing to wait for.\n");
  func_exit();
  return rv;
 }

 if (timeout == 0) timeout = MAX_SCHEDULE_TIMEOUT;
 end_jiffies = jiffies;
 if (timeout != MAX_SCHEDULE_TIMEOUT)
  end_jiffies += port->baud?(2 * rcib * 10 * HZ / port->baud):0;
 end_jiffies += timeout;

 gs_dprintk (GS_DEBUG_FLUSH, "now=%lx, end=%lx (%ld).\n",
      jiffies, end_jiffies, end_jiffies-jiffies);



 while ((charsleft = gs_real_chars_in_buffer (port->port.tty)) &&
         time_after (end_jiffies, jiffies)) {




  charsleft += 16;
  jiffies_to_transmit = port->baud?(1 + charsleft * 10 * HZ / port->baud):0;

  if (jiffies_to_transmit <= 0) jiffies_to_transmit = 1;

  gs_dprintk (GS_DEBUG_FLUSH, "Expect to finish in %d jiffies "
       "(%d chars).\n", jiffies_to_transmit, charsleft);

  msleep_interruptible(jiffies_to_msecs(jiffies_to_transmit));
  if (signal_pending (current)) {
   gs_dprintk (GS_DEBUG_FLUSH, "Signal pending. Bombing out: ");
   rv = -EINTR;
   break;
  }
 }

 gs_dprintk (GS_DEBUG_FLUSH, "charsleft = %d.\n", charsleft);
 set_current_state (TASK_RUNNING);

 func_exit();
 return rv;
}
