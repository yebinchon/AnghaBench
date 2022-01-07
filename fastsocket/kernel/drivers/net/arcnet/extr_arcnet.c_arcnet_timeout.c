
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; int tx_aborted_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct arcnet_local {int timed_out; int cur_tx; int intmask; scalar_t__ last_timeout; int lasttrans_dest; int lock; } ;


 int ACOMMAND (int) ;
 int AINTMASK (int) ;
 int ASTATUS () ;
 int BUGMSG (int ,char*,char*,int,int,int ) ;
 int D_EXTRA ;
 int EXCNAKflag ;
 int HZ ;
 int NOTXcmd ;
 int TXFREEflag ;
 scalar_t__ jiffies ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

void arcnet_timeout(struct net_device *dev)
{
 unsigned long flags;
 struct arcnet_local *lp = netdev_priv(dev);
 int status = ASTATUS();
 char *msg;

 spin_lock_irqsave(&lp->lock, flags);
 if (status & TXFREEflag) {
  msg = " - missed IRQ?";
 } else {
  msg = "";
  dev->stats.tx_aborted_errors++;
  lp->timed_out = 1;
  ACOMMAND(NOTXcmd | (lp->cur_tx << 3));
 }
 dev->stats.tx_errors++;


 AINTMASK(0);
 lp->intmask |= TXFREEflag|EXCNAKflag;
 AINTMASK(lp->intmask);

 spin_unlock_irqrestore(&lp->lock, flags);

 if (time_after(jiffies, lp->last_timeout + 10*HZ)) {
  BUGMSG(D_EXTRA, "tx timed out%s (status=%Xh, intmask=%Xh, dest=%02Xh)\n",
         msg, status, lp->intmask, lp->lasttrans_dest);
  lp->last_timeout = jiffies;
 }

 if (lp->cur_tx == -1)
  netif_wake_queue(dev);
}
