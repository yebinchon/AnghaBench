
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rx_sw_desc {int dummy; } ;
struct rx_desc {void* gen2; void* len_gen; void* addr_hi; void* addr_lo; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 int V_FLD_GEN1 (unsigned int) ;
 int V_FLD_GEN2 (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int dma_addr ;
 int pci_dma_mapping_error (struct pci_dev*,int) ;
 int pci_map_single (struct pci_dev*,void*,unsigned int,int ) ;
 int pci_unmap_addr_set (struct rx_sw_desc*,int ,int) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static inline int add_one_rx_buf(void *va, unsigned int len,
     struct rx_desc *d, struct rx_sw_desc *sd,
     unsigned int gen, struct pci_dev *pdev)
{
 dma_addr_t mapping;

 mapping = pci_map_single(pdev, va, len, PCI_DMA_FROMDEVICE);
 if (unlikely(pci_dma_mapping_error(pdev, mapping)))
  return -ENOMEM;

 pci_unmap_addr_set(sd, dma_addr, mapping);

 d->addr_lo = cpu_to_be32(mapping);
 d->addr_hi = cpu_to_be32((u64) mapping >> 32);
 wmb();
 d->len_gen = cpu_to_be32(V_FLD_GEN1(gen));
 d->gen2 = cpu_to_be32(V_FLD_GEN2(gen));
 return 0;
}
