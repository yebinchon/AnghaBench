
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dummy; } ;


 int tioce_do_dma_map (struct pci_dev*,unsigned long,size_t,int,int) ;

__attribute__((used)) static u64
tioce_dma_consistent(struct pci_dev *pdev, unsigned long paddr, size_t byte_count, int dma_flags)
{
 return tioce_do_dma_map(pdev, paddr, byte_count, 1, dma_flags);
}
