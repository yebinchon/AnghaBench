
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ql_adapter {int ndev; } ;
struct net_device {int dummy; } ;


 int MAC_ADDR_E ;
 int MAC_ADDR_TYPE_VLAN ;
 int SEM_MAC_ADDR_MASK ;
 int ifup ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 scalar_t__ ql_set_mac_addr_reg (struct ql_adapter*,int *,int ,int ) ;

__attribute__((used)) static void qlge_vlan_rx_add_vid(struct net_device *ndev, u16 vid)
{
 struct ql_adapter *qdev = netdev_priv(ndev);
 u32 enable_bit = MAC_ADDR_E;
 int status;

 status = ql_sem_spinlock(qdev, SEM_MAC_ADDR_MASK);
 if (status)
  return;
 if (ql_set_mac_addr_reg
     (qdev, (u8 *) &enable_bit, MAC_ADDR_TYPE_VLAN, vid)) {
  netif_err(qdev, ifup, qdev->ndev,
     "Failed to init vlan address.\n");
 }
 ql_sem_unlock(qdev, SEM_MAC_ADDR_MASK);
}
