
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_pbm_info {int numa_node; scalar_t__ controller_regs; scalar_t__ pbm_regs; struct iommu* iommu; } ;
struct iommu {scalar_t__ iommu_control; scalar_t__ iommu_tsbbase; int page_table; scalar_t__ iommu_flushinv; scalar_t__ write_complete_reg; scalar_t__ iommu_flush; } ;


 scalar_t__ FIRE_IOMMU_CONTROL ;
 scalar_t__ FIRE_IOMMU_FLUSH ;
 scalar_t__ FIRE_IOMMU_FLUSHINV ;
 scalar_t__ FIRE_IOMMU_TSBBASE ;
 int __pa (int ) ;
 int iommu_table_init (struct iommu*,int,int,int,int ) ;
 int upa_readq (scalar_t__) ;
 int upa_writeq (int,scalar_t__) ;

__attribute__((used)) static int pci_fire_pbm_iommu_init(struct pci_pbm_info *pbm)
{
 struct iommu *iommu = pbm->iommu;
 u32 vdma[2], dma_mask;
 u64 control;
 int tsbsize, err;


 vdma[0] = 0xc0000000;
 vdma[1] = 0x40000000;
 dma_mask = 0xffffffff;
 tsbsize = 128;


 iommu->iommu_control = pbm->pbm_regs + FIRE_IOMMU_CONTROL;
 iommu->iommu_tsbbase = pbm->pbm_regs + FIRE_IOMMU_TSBBASE;
 iommu->iommu_flush = pbm->pbm_regs + FIRE_IOMMU_FLUSH;
 iommu->iommu_flushinv = pbm->pbm_regs + FIRE_IOMMU_FLUSHINV;




 iommu->write_complete_reg = pbm->controller_regs + 0x410000UL;




 upa_writeq(~(u64)0, iommu->iommu_flushinv);

 err = iommu_table_init(iommu, tsbsize * 8 * 1024, vdma[0], dma_mask,
          pbm->numa_node);
 if (err)
  return err;

 upa_writeq(__pa(iommu->page_table) | 0x7UL, iommu->iommu_tsbbase);

 control = upa_readq(iommu->iommu_control);
 control |= (0x00000400 |
      0x00000300 |
      0x00000002 |
      0x00000001 );
 upa_writeq(control, iommu->iommu_control);

 return 0;
}
