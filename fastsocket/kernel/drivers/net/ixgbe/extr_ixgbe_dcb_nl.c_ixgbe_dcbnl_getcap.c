
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int dcbx_cap; } ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 ixgbe_dcbnl_getcap(struct net_device *netdev, int capid, u8 *cap)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 switch (capid) {
 case 130:
  *cap = 1;
  break;
 case 132:
  *cap = 1;
  break;
 case 128:
  *cap = 0;
  break;
 case 129:
  *cap = 0x80;
  break;
 case 131:
  *cap = 0x80;
  break;
 case 133:
  *cap = 1;
  break;
 case 135:
  *cap = 0;
  break;
 case 134:
  *cap = adapter->dcbx_cap;
  break;
 default:
  *cap = 0;
  break;
 }

 return 0;
}
