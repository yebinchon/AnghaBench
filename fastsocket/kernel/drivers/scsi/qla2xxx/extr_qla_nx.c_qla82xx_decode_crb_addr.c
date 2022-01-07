
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ADDR_ERROR ;
 int MAX_CRB_XFORM ;
 unsigned long* crb_addr_xform ;
 int qla82xx_crb_addr_transform_setup () ;
 int qla82xx_crb_table_initialized ;

__attribute__((used)) static unsigned long
qla82xx_decode_crb_addr(unsigned long addr)
{
 int i;
 unsigned long base_addr, offset, pci_base;

 if (!qla82xx_crb_table_initialized)
  qla82xx_crb_addr_transform_setup();

 pci_base = ADDR_ERROR;
 base_addr = addr & 0xfff00000;
 offset = addr & 0x000fffff;

 for (i = 0; i < MAX_CRB_XFORM; i++) {
  if (crb_addr_xform[i] == base_addr) {
   pci_base = i << 20;
   break;
  }
 }
 if (pci_base == ADDR_ERROR)
  return pci_base;
 return pci_base + offset;
}
