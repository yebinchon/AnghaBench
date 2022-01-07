
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {int wait_for_tok_int; scalar_t__ Sleeping; } ;
struct net_device {int dummy; } ;


 struct net_local* netdev_priv (struct net_device*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void tms380tr_timer_end_wait(unsigned long data)
{
 struct net_device *dev = (struct net_device*)data;
 struct net_local *tp = netdev_priv(dev);

 if(tp->Sleeping)
 {
  tp->Sleeping = 0;
  wake_up_interruptible(&tp->wait_for_tok_int);
 }

 return;
}
