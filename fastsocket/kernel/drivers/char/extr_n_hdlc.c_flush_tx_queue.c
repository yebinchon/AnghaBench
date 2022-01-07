
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct n_hdlc_buf {int dummy; } ;
struct TYPE_2__ {int spinlock; } ;
struct n_hdlc {TYPE_1__ tx_buf_list; struct n_hdlc_buf* tbuf; int tx_free_buf_list; } ;


 struct n_hdlc_buf* n_hdlc_buf_get (TYPE_1__*) ;
 int n_hdlc_buf_put (int *,struct n_hdlc_buf*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct n_hdlc* tty2n_hdlc (struct tty_struct*) ;

__attribute__((used)) static void flush_tx_queue(struct tty_struct *tty)
{
 struct n_hdlc *n_hdlc = tty2n_hdlc(tty);
 struct n_hdlc_buf *buf;
 unsigned long flags;

 while ((buf = n_hdlc_buf_get(&n_hdlc->tx_buf_list)))
  n_hdlc_buf_put(&n_hdlc->tx_free_buf_list, buf);
  spin_lock_irqsave(&n_hdlc->tx_buf_list.spinlock, flags);
 if (n_hdlc->tbuf) {
  n_hdlc_buf_put(&n_hdlc->tx_free_buf_list, n_hdlc->tbuf);
  n_hdlc->tbuf = ((void*)0);
 }
 spin_unlock_irqrestore(&n_hdlc->tx_buf_list.spinlock, flags);
}
