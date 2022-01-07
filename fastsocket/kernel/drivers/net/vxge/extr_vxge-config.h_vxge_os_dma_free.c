
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int kfree (void*) ;

__attribute__((used)) static inline void vxge_os_dma_free(struct pci_dev *pdev, const void *vaddr,
   struct pci_dev **p_dma_acch)
{
 unsigned long misaligned = *(unsigned long *)p_dma_acch;
 u8 *tmp = (u8 *)vaddr;
 tmp -= misaligned;
 kfree((void *)tmp);
}
