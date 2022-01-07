
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u64 ;
struct TYPE_2__ {int pci_func; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;


 int CRB_MAC_BLOCK_START ;
 int NXRD32 (struct netxen_adapter*,int) ;
 int le64_to_cpu (int) ;

int netxen_p3_get_mac_addr(struct netxen_adapter *adapter, u64 *mac)
{
 uint32_t crbaddr, mac_hi, mac_lo;
 int pci_func = adapter->ahw.pci_func;

 crbaddr = CRB_MAC_BLOCK_START +
  (4 * ((pci_func/2) * 3)) + (4 * (pci_func & 1));

 mac_lo = NXRD32(adapter, crbaddr);
 mac_hi = NXRD32(adapter, crbaddr+4);

 if (pci_func & 1)
  *mac = le64_to_cpu((mac_lo >> 16) | ((u64)mac_hi << 16));
 else
  *mac = le64_to_cpu((u64)mac_lo | ((u64)mac_hi << 32));

 return 0;
}
