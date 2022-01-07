
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; int function; scalar_t__ expires; } ;
struct net_local {int HaltInProgress; int Sleeping; TYPE_1__ timer; scalar_t__ TransmitCommandActive; int wait_for_tok_int; } ;
struct net_device {scalar_t__ dma; } ;


 int HZ ;
 int OC_CLOSE ;
 int POSREG ;
 int SIFCMD ;
 int SIFWRITEB (int,int ) ;
 int SIFWRITEW (int,int ) ;
 int add_timer (TYPE_1__*) ;
 unsigned long claim_dma_lock () ;
 int del_timer (TYPE_1__*) ;
 int disable_dma (scalar_t__) ;
 int interruptible_sleep_on (int *) ;
 scalar_t__ jiffies ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int release_dma_lock (unsigned long) ;
 int tms380tr_cancel_tx_queue (struct net_local*) ;
 int tms380tr_disable_interrupts (struct net_device*) ;
 int tms380tr_enable_interrupts (struct net_device*) ;
 int tms380tr_exec_cmd (struct net_device*,int ) ;
 int tms380tr_timer_end_wait ;

int tms380tr_close(struct net_device *dev)
{
 struct net_local *tp = netdev_priv(dev);
 netif_stop_queue(dev);

 del_timer(&tp->timer);



 tp->HaltInProgress = 1;
 tms380tr_exec_cmd(dev, OC_CLOSE);
 tp->timer.expires = jiffies + 1*HZ;
 tp->timer.function = tms380tr_timer_end_wait;
 tp->timer.data = (unsigned long)dev;
 add_timer(&tp->timer);

 tms380tr_enable_interrupts(dev);

 tp->Sleeping = 1;
 interruptible_sleep_on(&tp->wait_for_tok_int);
 tp->TransmitCommandActive = 0;

 del_timer(&tp->timer);
 tms380tr_disable_interrupts(dev);
 SIFWRITEW(0xFF00, SIFCMD);




 tms380tr_cancel_tx_queue(tp);

 return (0);
}
