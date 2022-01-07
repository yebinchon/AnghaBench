
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct netxen_adapter {int physical_port; } ;


 int EINVAL ;
 int EIO ;
 int NETXEN_NIU_MAX_XG_PORTS ;
 int NETXEN_NIU_XGE_STATION_ADDR_0_1 ;
 int NETXEN_NIU_XGE_STATION_ADDR_0_HI ;
 scalar_t__ NXWR32 (struct netxen_adapter*,int,int) ;

__attribute__((used)) static int netxen_p2_nic_set_mac_addr(struct netxen_adapter *adapter, u8 *addr)
{
 u32 mac_hi, mac_lo;
 u32 reg_hi, reg_lo;

 u8 phy = adapter->physical_port;

 if (phy >= NETXEN_NIU_MAX_XG_PORTS)
  return -EINVAL;

 mac_lo = ((u32)addr[0] << 16) | ((u32)addr[1] << 24);
 mac_hi = addr[2] | ((u32)addr[3] << 8) |
  ((u32)addr[4] << 16) | ((u32)addr[5] << 24);

 reg_lo = NETXEN_NIU_XGE_STATION_ADDR_0_1 + (0x10000 * phy);
 reg_hi = NETXEN_NIU_XGE_STATION_ADDR_0_HI + (0x10000 * phy);


 if (NXWR32(adapter, reg_lo, mac_lo) || NXWR32(adapter, reg_hi, mac_hi))
  return -EIO;
 if (NXWR32(adapter, reg_lo, mac_lo) || NXWR32(adapter, reg_hi, mac_hi))
  return -EIO;

 return 0;
}
