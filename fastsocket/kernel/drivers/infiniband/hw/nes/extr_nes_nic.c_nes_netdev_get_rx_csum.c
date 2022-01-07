
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct nes_vnic {scalar_t__ rx_checksum_disabled; } ;


 struct nes_vnic* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 nes_netdev_get_rx_csum (struct net_device *netdev)
{
 struct nes_vnic *nesvnic = netdev_priv(netdev);

 if (nesvnic->rx_checksum_disabled)
  return 0;
 else
  return 1;
}
