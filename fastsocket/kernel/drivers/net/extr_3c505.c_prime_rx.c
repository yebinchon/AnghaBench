
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ rx_active; int itx_pcb; } ;
typedef TYPE_1__ elp_device ;


 scalar_t__ ELP_RX_PCBS ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int start_receive (struct net_device*,int *) ;

__attribute__((used)) static inline void prime_rx(struct net_device *dev)
{
 elp_device *adapter = netdev_priv(dev);
 while (adapter->rx_active < ELP_RX_PCBS && netif_running(dev)) {
  if (!start_receive(dev, &adapter->itx_pcb))
   break;
 }
}
