
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct netxen_adapter {int physical_port; } ;


 int MAC_HI (int *) ;
 int MAC_LO (int *) ;
 scalar_t__ NETXEN_MCAST_ADDR (int ,int) ;
 int NXWR32 (struct netxen_adapter*,scalar_t__,int ) ;

__attribute__((used)) static int
netxen_nic_set_mcast_addr(struct netxen_adapter *adapter,
  int index, u8 *addr)
{
 u32 hi = 0, lo = 0;
 u16 port = adapter->physical_port;

 lo = MAC_LO(addr);
 hi = MAC_HI(addr);

 NXWR32(adapter, NETXEN_MCAST_ADDR(port, index), hi);
 NXWR32(adapter, NETXEN_MCAST_ADDR(port, index)+4, lo);

 return 0;
}
