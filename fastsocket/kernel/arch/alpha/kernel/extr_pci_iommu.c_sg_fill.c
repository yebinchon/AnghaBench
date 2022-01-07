
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {long dma_length; scalar_t__ dma_address; long length; } ;
struct pci_iommu_arena {scalar_t__ dma_base; unsigned long* ptes; } ;
struct device {int dummy; } ;
typedef unsigned long dma_addr_t ;
struct TYPE_2__ {unsigned long pci_dac_offset; } ;


 int DBGA (char*,int,long,unsigned long,...) ;
 unsigned long PAGE_MASK ;
 long PAGE_SIZE ;
 unsigned long SG_ENT_PHYS_ADDRESS (struct scatterlist*) ;
 long SG_ENT_VIRT_ADDRESS (struct scatterlist*) ;
 unsigned long __direct_map_base ;
 unsigned long __direct_map_size ;
 int __va (unsigned long) ;
 TYPE_1__ alpha_mv ;
 long iommu_arena_alloc (struct device*,struct pci_iommu_arena*,long,int ) ;
 long iommu_num_pages (unsigned long,long,long) ;
 int mk_iommu_pte (unsigned long) ;
 int sg_classify (struct device*,struct scatterlist*,struct scatterlist*,int ) ;

__attribute__((used)) static int
sg_fill(struct device *dev, struct scatterlist *leader, struct scatterlist *end,
 struct scatterlist *out, struct pci_iommu_arena *arena,
 dma_addr_t max_dma, int dac_allowed)
{
 unsigned long paddr = SG_ENT_PHYS_ADDRESS(leader);
 long size = leader->dma_length;
 struct scatterlist *sg;
 unsigned long *ptes;
 long npages, dma_ofs, i;




 if (leader->dma_address == 0
     && paddr + size + __direct_map_base - 1 <= max_dma
     && paddr + size <= __direct_map_size) {
  out->dma_address = paddr + __direct_map_base;
  out->dma_length = size;

  DBGA("    sg_fill: [%p,%lx] -> direct %llx\n",
       __va(paddr), size, out->dma_address);

  return 0;
 }



 if (leader->dma_address == 0 && dac_allowed) {
  out->dma_address = paddr + alpha_mv.pci_dac_offset;
  out->dma_length = size;

  DBGA("    sg_fill: [%p,%lx] -> DAC %llx\n",
       __va(paddr), size, out->dma_address);

  return 0;
 }




 paddr &= ~PAGE_MASK;
 npages = iommu_num_pages(paddr, size, PAGE_SIZE);
 dma_ofs = iommu_arena_alloc(dev, arena, npages, 0);
 if (dma_ofs < 0) {

  if (leader->dma_address == 0)
   return -1;



  sg_classify(dev, leader, end, 0);
  return sg_fill(dev, leader, end, out, arena, max_dma, dac_allowed);
 }

 out->dma_address = arena->dma_base + dma_ofs*PAGE_SIZE + paddr;
 out->dma_length = size;

 DBGA("    sg_fill: [%p,%lx] -> sg %llx np %ld\n",
      __va(paddr), size, out->dma_address, npages);



 ptes = &arena->ptes[dma_ofs];
 sg = leader;
 do {




  size = sg->length;
  paddr = SG_ENT_PHYS_ADDRESS(sg);

  while (sg+1 < end && (int) sg[1].dma_address == -1) {
   size += sg[1].length;
   sg++;
  }

  npages = iommu_num_pages(paddr, size, PAGE_SIZE);

  paddr &= PAGE_MASK;
  for (i = 0; i < npages; ++i, paddr += PAGE_SIZE)
   *ptes++ = mk_iommu_pte(paddr);
 } while (++sg < end && (int) sg->dma_address < 0);

 return 1;
}
