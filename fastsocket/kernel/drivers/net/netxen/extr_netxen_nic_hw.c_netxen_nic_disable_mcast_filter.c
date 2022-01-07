
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned long u32 ;
typedef int u16 ;
struct netxen_adapter {int physical_port; scalar_t__ mc_enabled; int * mac_addr; } ;


 unsigned long MAC_HI (int *) ;
 unsigned long MAC_LO (int *) ;
 scalar_t__ NETXEN_MAC_ADDR_CNTL_REG ;
 scalar_t__ NETXEN_UNICAST_ADDR (int,int) ;
 unsigned long NXRD32 (struct netxen_adapter*,scalar_t__) ;
 int NXWR32 (struct netxen_adapter*,scalar_t__,unsigned long) ;

__attribute__((used)) static int
netxen_nic_disable_mcast_filter(struct netxen_adapter *adapter)
{
 u32 val = 0;
 u16 port = adapter->physical_port;
 u8 *addr = adapter->mac_addr;

 if (!adapter->mc_enabled)
  return 0;

 val = NXRD32(adapter, NETXEN_MAC_ADDR_CNTL_REG);
 val &= ~(1UL << (28+port));
 NXWR32(adapter, NETXEN_MAC_ADDR_CNTL_REG, val);

 val = MAC_HI(addr);
 NXWR32(adapter, NETXEN_UNICAST_ADDR(port, 0), val);
 val = MAC_LO(addr);
 NXWR32(adapter, NETXEN_UNICAST_ADDR(port, 0)+4, val);

 NXWR32(adapter, NETXEN_UNICAST_ADDR(port, 1), 0);
 NXWR32(adapter, NETXEN_UNICAST_ADDR(port, 1)+4, 0);

 adapter->mc_enabled = 0;
 return 0;
}
