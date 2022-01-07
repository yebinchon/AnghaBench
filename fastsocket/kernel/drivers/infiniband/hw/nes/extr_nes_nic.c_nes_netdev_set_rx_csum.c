
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct nes_vnic {int rx_checksum_disabled; } ;


 struct nes_vnic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nes_netdev_set_rx_csum(struct net_device *netdev, u32 enable)
{
 struct nes_vnic *nesvnic = netdev_priv(netdev);

 if (enable)
  nesvnic->rx_checksum_disabled = 0;
 else
  nesvnic->rx_checksum_disabled = 1;
 return 0;
}
