
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;
struct net_device {int dummy; } ;


 int netdev_err (struct net_device*,char*) ;
 struct tg3* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_tx_err (struct tg3*) ;
 int tg3_dump_state (struct tg3*) ;
 int tg3_reset_task_schedule (struct tg3*) ;

__attribute__((used)) static void tg3_tx_timeout(struct net_device *dev)
{
 struct tg3 *tp = netdev_priv(dev);

 if (netif_msg_tx_err(tp)) {
  netdev_err(dev, "transmit timed out, resetting\n");
  tg3_dump_state(tp);
 }

 tg3_reset_task_schedule(tp);
}
