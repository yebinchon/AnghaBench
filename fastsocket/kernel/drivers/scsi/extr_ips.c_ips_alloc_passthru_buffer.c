
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ioctl_data; int ioctl_len; int ioctl_busaddr; int pcidev; } ;
typedef TYPE_1__ ips_ha_t ;
typedef int dma_addr_t ;


 void* pci_alloc_consistent (int ,int,int *) ;
 int pci_free_consistent (int ,int,char*,int ) ;

__attribute__((used)) static int
ips_alloc_passthru_buffer(ips_ha_t * ha, int length)
{
 void *bigger_buf;
 dma_addr_t dma_busaddr;

 if (ha->ioctl_data && length <= ha->ioctl_len)
  return 0;

 bigger_buf = pci_alloc_consistent(ha->pcidev, length, &dma_busaddr);
 if (bigger_buf) {

  pci_free_consistent(ha->pcidev, ha->ioctl_len, ha->ioctl_data,
        ha->ioctl_busaddr);

  ha->ioctl_data = (char *) bigger_buf;
  ha->ioctl_len = length;
  ha->ioctl_busaddr = dma_busaddr;
 } else {
  return -1;
 }
 return 0;
}
