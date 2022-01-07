
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct intel_iommu {int register_lock; scalar_t__ reg; } ;


 int BUG () ;
 scalar_t__ DMAR_CCMD_REG ;

 int const DMA_CCMD_DID (int ) ;

 int const DMA_CCMD_FM (int ) ;

 int DMA_CCMD_ICC ;
 int const DMA_CCMD_SID (int ) ;
 int IOMMU_WAIT_OP (struct intel_iommu*,scalar_t__,int ,int,int) ;
 int dmar_readq ;
 int dmar_writeq (scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __iommu_flush_context(struct intel_iommu *iommu,
      u16 did, u16 source_id, u8 function_mask,
      u64 type)
{
 u64 val = 0;
 unsigned long flag;

 switch (type) {
 case 128:
  val = 128;
  break;
 case 129:
  val = 129|DMA_CCMD_DID(did);
  break;
 case 130:
  val = 130|DMA_CCMD_DID(did)
   | DMA_CCMD_SID(source_id) | DMA_CCMD_FM(function_mask);
  break;
 default:
  BUG();
 }
 val |= DMA_CCMD_ICC;

 spin_lock_irqsave(&iommu->register_lock, flag);
 dmar_writeq(iommu->reg + DMAR_CCMD_REG, val);


 IOMMU_WAIT_OP(iommu, DMAR_CCMD_REG,
  dmar_readq, (!(val & DMA_CCMD_ICC)), val);

 spin_unlock_irqrestore(&iommu->register_lock, flag);
}
