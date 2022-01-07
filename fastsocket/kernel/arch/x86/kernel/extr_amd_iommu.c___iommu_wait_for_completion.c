
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {int lock; scalar_t__ mmio_base; } ;


 unsigned long EXIT_LOOP_COUNT ;
 int INC_STATS_COUNTER (int ) ;
 unsigned int MMIO_STATUS_COM_WAIT_INT_MASK ;
 scalar_t__ MMIO_STATUS_OFFSET ;
 int compl_wait ;
 unsigned int readl (scalar_t__) ;
 int reset_iommu_command_buffer (struct amd_iommu*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void __iommu_wait_for_completion(struct amd_iommu *iommu)
{
 int ready = 0;
 unsigned status = 0;
 unsigned long i = 0;

 INC_STATS_COUNTER(compl_wait);

 while (!ready && (i < EXIT_LOOP_COUNT)) {
  ++i;

  status = readl(iommu->mmio_base + MMIO_STATUS_OFFSET);
  ready = status & MMIO_STATUS_COM_WAIT_INT_MASK;
 }


 status &= ~MMIO_STATUS_COM_WAIT_INT_MASK;
 writel(status, iommu->mmio_base + MMIO_STATUS_OFFSET);

 if (unlikely(i == EXIT_LOOP_COUNT)) {
  spin_unlock(&iommu->lock);
  reset_iommu_command_buffer(iommu);
  spin_lock(&iommu->lock);
 }
}
