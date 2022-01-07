
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct btcx_riscmem {unsigned int size; int * cpu; scalar_t__ dma; } ;
typedef scalar_t__ dma_addr_t ;
typedef int __le32 ;


 int ENOMEM ;
 int btcx_riscmem_free (struct pci_dev*,struct btcx_riscmem*) ;
 scalar_t__ debug ;
 int memcnt ;
 int memset (int *,int ,unsigned int) ;
 int * pci_alloc_consistent (struct pci_dev*,unsigned int,scalar_t__*) ;
 int printk (char*,int ,unsigned long,int *,unsigned int) ;

int btcx_riscmem_alloc(struct pci_dev *pci,
         struct btcx_riscmem *risc,
         unsigned int size)
{
 __le32 *cpu;
 dma_addr_t dma = 0;

 if (((void*)0) != risc->cpu && risc->size < size)
  btcx_riscmem_free(pci,risc);
 if (((void*)0) == risc->cpu) {
  cpu = pci_alloc_consistent(pci, size, &dma);
  if (((void*)0) == cpu)
   return -ENOMEM;
  risc->cpu = cpu;
  risc->dma = dma;
  risc->size = size;
  if (debug) {
   memcnt++;
   printk("btcx: riscmem alloc [%d] dma=%lx cpu=%p size=%d\n",
          memcnt, (unsigned long)dma, cpu, size);
  }
 }
 memset(risc->cpu,0,risc->size);
 return 0;
}
