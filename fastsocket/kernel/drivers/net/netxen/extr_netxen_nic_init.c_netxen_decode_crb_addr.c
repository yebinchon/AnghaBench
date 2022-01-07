
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NETXEN_ADDR_ERROR ;
 int NETXEN_MAX_CRB_XFORM ;
 int crb_addr_transform_setup () ;
 int* crb_addr_xform ;

__attribute__((used)) static u32 netxen_decode_crb_addr(u32 addr)
{
 int i;
 u32 base_addr, offset, pci_base;

 crb_addr_transform_setup();

 pci_base = NETXEN_ADDR_ERROR;
 base_addr = addr & 0xfff00000;
 offset = addr & 0x000fffff;

 for (i = 0; i < NETXEN_MAX_CRB_XFORM; i++) {
  if (crb_addr_xform[i] == base_addr) {
   pci_base = i << 20;
   break;
  }
 }
 if (pci_base == NETXEN_ADDR_ERROR)
  return pci_base;
 else
  return pci_base + offset;
}
