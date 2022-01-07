
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dma_address; size_t dma_length; } ;
struct pci_iommu_arena {int dma_base; int size; int next_entry; int lock; } ;
struct pci_dev {int dma_mask; struct pci_controller* sysdata; } ;
struct pci_controller {struct pci_iommu_arena* sg_isa; struct pci_iommu_arena* sg_pci; } ;
typedef int dma_addr_t ;
typedef int dma64_addr_t ;
struct TYPE_2__ {int (* mv_pci_tbi ) (struct pci_controller*,int,int) ;} ;


 int BUG () ;
 int DBGA (char*,int,...) ;
 int ISA_DMA_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PCI_DMA_NONE ;
 int __direct_map_base ;
 int __direct_map_size ;
 TYPE_1__ alpha_mv ;
 int iommu_arena_free (struct pci_iommu_arena*,long,long) ;
 long iommu_num_pages (int,size_t,int ) ;
 struct pci_controller* pci_isa_hose ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_controller*,int,int) ;

void
pci_unmap_sg(struct pci_dev *pdev, struct scatterlist *sg, int nents,
      int direction)
{
 unsigned long flags;
 struct pci_controller *hose;
 struct pci_iommu_arena *arena;
 struct scatterlist *end;
 dma_addr_t max_dma;
 dma_addr_t fbeg, fend;

 if (direction == PCI_DMA_NONE)
  BUG();

 if (! alpha_mv.mv_pci_tbi)
  return;

 hose = pdev ? pdev->sysdata : pci_isa_hose;
 max_dma = pdev ? pdev->dma_mask : ISA_DMA_MASK;
 arena = hose->sg_pci;
 if (!arena || arena->dma_base + arena->size - 1 > max_dma)
  arena = hose->sg_isa;

 fbeg = -1, fend = 0;

 spin_lock_irqsave(&arena->lock, flags);

 for (end = sg + nents; sg < end; ++sg) {
  dma64_addr_t addr;
  size_t size;
  long npages, ofs;
  dma_addr_t tend;

  addr = sg->dma_address;
  size = sg->dma_length;
  if (!size)
   break;

  if (addr > 0xffffffff) {

   DBGA("    (%ld) DAC [%llx,%zx]\n",
         sg - end + nents, addr, size);
   continue;
  }

  if (addr >= __direct_map_base
      && addr < __direct_map_base + __direct_map_size) {

   DBGA("    (%ld) direct [%llx,%zx]\n",
         sg - end + nents, addr, size);
   continue;
  }

  DBGA("    (%ld) sg [%llx,%zx]\n",
       sg - end + nents, addr, size);

  npages = iommu_num_pages(addr, size, PAGE_SIZE);
  ofs = (addr - arena->dma_base) >> PAGE_SHIFT;
  iommu_arena_free(arena, ofs, npages);

  tend = addr + size - 1;
  if (fbeg > addr) fbeg = addr;
  if (fend < tend) fend = tend;
 }




 if ((fend - arena->dma_base) >> PAGE_SHIFT >= arena->next_entry)
  alpha_mv.mv_pci_tbi(hose, fbeg, fend);

 spin_unlock_irqrestore(&arena->lock, flags);

 DBGA("pci_unmap_sg: %ld entries\n", nents - (end - sg));
}
