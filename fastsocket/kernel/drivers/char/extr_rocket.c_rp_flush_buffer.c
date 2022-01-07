
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int poll_wait; struct r_port* driver_data; } ;
struct r_port {int channel; int slock; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;
typedef int CHANNEL_t ;


 scalar_t__ rocket_paranoia_check (struct r_port*,char*) ;
 int sFlushTxFIFO (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_wakeup (struct tty_struct*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rp_flush_buffer(struct tty_struct *tty)
{
 struct r_port *info = tty->driver_data;
 CHANNEL_t *cp;
 unsigned long flags;

 if (rocket_paranoia_check(info, "rp_flush_buffer"))
  return;

 spin_lock_irqsave(&info->slock, flags);
 info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;
 spin_unlock_irqrestore(&info->slock, flags);




 tty_wakeup(tty);

 cp = &info->channel;
 sFlushTxFIFO(cp);
}
