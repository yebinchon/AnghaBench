
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct netxen_adapter {int netdev; } ;


 int netxen_p3_nic_set_multi (int ) ;

__attribute__((used)) static int netxen_p3_nic_set_mac_addr(struct netxen_adapter *adapter, u8 *addr)
{

 netxen_p3_nic_set_multi(adapter->netdev);
 return 0;
}
