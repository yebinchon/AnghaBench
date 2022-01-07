
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {struct adapter* ml_priv; } ;
struct adapter {int flags; } ;


 int RX_CSUM_ENABLED ;

__attribute__((used)) static u32 get_rx_csum(struct net_device *dev)
{
 struct adapter *adapter = dev->ml_priv;

 return (adapter->flags & RX_CSUM_ENABLED) != 0;
}
