
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {struct adapter* ml_priv; } ;
struct adapter {int flags; } ;


 int RX_CSUM_ENABLED ;

__attribute__((used)) static int set_rx_csum(struct net_device *dev, u32 data)
{
 struct adapter *adapter = dev->ml_priv;

 if (data)
  adapter->flags |= RX_CSUM_ENABLED;
 else
  adapter->flags &= ~RX_CSUM_ENABLED;
 return 0;
}
