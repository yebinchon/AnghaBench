
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct nes_vnic {int dummy; } ;


 int NES_DBG_NIC_TX ;
 int nes_debug (int ,char*,int ) ;
 struct nes_vnic* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_timer (struct nes_vnic*) ;

__attribute__((used)) static void nes_netdev_tx_timeout(struct net_device *netdev)
{
 struct nes_vnic *nesvnic = netdev_priv(netdev);

 if (netif_msg_timer(nesvnic))
  nes_debug(NES_DBG_NIC_TX, "%s: tx timeout\n", netdev->name);
}
