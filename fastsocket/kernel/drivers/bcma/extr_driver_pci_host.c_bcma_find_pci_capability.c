
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct bcma_drv_pci {int dummy; } ;


 int PCI_CAPABILITY_LIST ;
 scalar_t__ PCI_CONFIG_SPACE_SIZE ;
 int PCI_HEADER_TYPE ;
 int PCI_HEADER_TYPE_NORMAL ;
 int PCI_STATUS ;
 int PCI_STATUS_CAP_LIST ;
 int bcma_extpci_read_config (struct bcma_drv_pci*,unsigned int,unsigned int,int,...) ;

__attribute__((used)) static u8 bcma_find_pci_capability(struct bcma_drv_pci *pc, unsigned int dev,
       unsigned int func, u8 req_cap_id,
       unsigned char *buf, u32 *buflen)
{
 u8 cap_id;
 u8 cap_ptr = 0;
 u32 bufsize;
 u8 byte_val;


 bcma_extpci_read_config(pc, dev, func, PCI_HEADER_TYPE, &byte_val,
    sizeof(u8));
 if ((byte_val & 0x7F) != PCI_HEADER_TYPE_NORMAL)
  return cap_ptr;


 bcma_extpci_read_config(pc, dev, func, PCI_STATUS, &byte_val,
    sizeof(u8));
 if (!(byte_val & PCI_STATUS_CAP_LIST))
  return cap_ptr;


 bcma_extpci_read_config(pc, dev, func, PCI_CAPABILITY_LIST, &cap_ptr,
    sizeof(u8));
 if (cap_ptr == 0x00)
  return cap_ptr;



 bcma_extpci_read_config(pc, dev, func, cap_ptr, &cap_id, sizeof(u8));
 while (cap_id != req_cap_id) {
  bcma_extpci_read_config(pc, dev, func, cap_ptr + 1, &cap_ptr,
     sizeof(u8));
  if (cap_ptr == 0x00)
   return cap_ptr;
  bcma_extpci_read_config(pc, dev, func, cap_ptr, &cap_id,
     sizeof(u8));
 }


 if ((buf != ((void*)0)) && (buflen != ((void*)0))) {
  u8 cap_data;

  bufsize = *buflen;
  if (!bufsize)
   return cap_ptr;

  *buflen = 0;


  cap_data = cap_ptr + 2;
  if ((bufsize + cap_data) > PCI_CONFIG_SPACE_SIZE)
   bufsize = PCI_CONFIG_SPACE_SIZE - cap_data;
  *buflen = bufsize;
  while (bufsize--) {
   bcma_extpci_read_config(pc, dev, func, cap_data, buf,
      sizeof(u8));
   cap_data++;
   buf++;
  }
 }

 return cap_ptr;
}
