
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct dma_loaf {size_t length; int dma_base; int dma_free; void* cpu_base; void* cpu_free; } ;
typedef int dma_addr_t ;


 int memset (void*,int ,size_t) ;
 void* pci_alloc_consistent (struct pci_dev*,size_t,int *) ;

__attribute__((used)) static bool init_dma_loaf(struct pci_dev *dev, struct dma_loaf *loaf,
         size_t len)
{
 void *cpu_addr;
 dma_addr_t dma_handle;

 cpu_addr = pci_alloc_consistent(dev, len, &dma_handle);
 if (cpu_addr == ((void*)0))
  return 0;

 loaf->cpu_free = loaf->cpu_base = cpu_addr;
 loaf->dma_free =loaf->dma_base = dma_handle;
 loaf->length = len;
 memset(cpu_addr, 0, len);
 return 1;
}
