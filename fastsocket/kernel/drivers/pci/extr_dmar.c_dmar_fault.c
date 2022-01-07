
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct intel_iommu {int reg; int register_lock; int cap; } ;
typedef int irqreturn_t ;


 int DMAR_FSTS_REG ;
 int DMA_FRCD_F ;
 int DMA_FSTS_PPF ;
 int IRQ_HANDLED ;
 int PRIMARY_FAULT_REG_LEN ;
 int cap_fault_reg_offset (int ) ;
 int cap_num_fault_regs (int ) ;
 int dma_frcd_fault_reason (int) ;
 int dma_frcd_page_addr (int ) ;
 int dma_frcd_source_id (int) ;
 int dma_frcd_type (int) ;
 int dma_fsts_fault_record_index (int) ;
 int dmar_fault_do_one (struct intel_iommu*,int,int ,int ,int ) ;
 int dmar_readq (int) ;
 int pr_err (char*,int) ;
 int readl (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int) ;

irqreturn_t dmar_fault(int irq, void *dev_id)
{
 struct intel_iommu *iommu = dev_id;
 int reg, fault_index;
 u32 fault_status;
 unsigned long flag;

 spin_lock_irqsave(&iommu->register_lock, flag);
 fault_status = readl(iommu->reg + DMAR_FSTS_REG);
 if (fault_status)
  pr_err("DRHD: handling fault status reg %x\n", fault_status);


 if (!(fault_status & DMA_FSTS_PPF))
  goto clear_rest;

 fault_index = dma_fsts_fault_record_index(fault_status);
 reg = cap_fault_reg_offset(iommu->cap);
 while (1) {
  u8 fault_reason;
  u16 source_id;
  u64 guest_addr;
  int type;
  u32 data;


  data = readl(iommu->reg + reg +
    fault_index * PRIMARY_FAULT_REG_LEN + 12);
  if (!(data & DMA_FRCD_F))
   break;

  fault_reason = dma_frcd_fault_reason(data);
  type = dma_frcd_type(data);

  data = readl(iommu->reg + reg +
    fault_index * PRIMARY_FAULT_REG_LEN + 8);
  source_id = dma_frcd_source_id(data);

  guest_addr = dmar_readq(iommu->reg + reg +
    fault_index * PRIMARY_FAULT_REG_LEN);
  guest_addr = dma_frcd_page_addr(guest_addr);

  writel(DMA_FRCD_F, iommu->reg + reg +
   fault_index * PRIMARY_FAULT_REG_LEN + 12);

  spin_unlock_irqrestore(&iommu->register_lock, flag);

  dmar_fault_do_one(iommu, type, fault_reason,
    source_id, guest_addr);

  fault_index++;
  if (fault_index >= cap_num_fault_regs(iommu->cap))
   fault_index = 0;
  spin_lock_irqsave(&iommu->register_lock, flag);
 }
clear_rest:

 fault_status = readl(iommu->reg + DMAR_FSTS_REG);
 writel(fault_status, iommu->reg + DMAR_FSTS_REG);

 spin_unlock_irqrestore(&iommu->register_lock, flag);
 return IRQ_HANDLED;
}
