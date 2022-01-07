
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu {int name; int dev; scalar_t__ iopgd; } ;


 int EINVAL ;
 int ENODEV ;
 int IS_ALIGNED (int,int ) ;
 int MMU_CNTL ;
 int MMU_CNTL_MASK ;
 int MMU_CNTL_MMU_EN ;
 int MMU_CNTL_TWL_EN ;
 int MMU_IRQENABLE ;
 int MMU_IRQ_MASK ;
 int MMU_REVISION ;
 int MMU_SYSCONFIG ;
 int MMU_SYSSTATUS ;
 int MMU_SYS_AUTOIDLE ;
 int MMU_SYS_IDLE_MASK ;
 int MMU_SYS_IDLE_SMART ;
 int MMU_SYS_RESETDONE ;
 int MMU_SYS_SOFTRESET ;
 int MMU_TTB ;
 int SZ_16K ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,int,int) ;
 int iommu_read_reg (struct iommu*,int ) ;
 int iommu_write_reg (struct iommu*,int,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int time_after (unsigned long,unsigned long) ;
 int virt_to_phys (scalar_t__) ;

__attribute__((used)) static int omap2_iommu_enable(struct iommu *obj)
{
 u32 l, pa;
 unsigned long timeout;

 if (!obj->iopgd || !IS_ALIGNED((u32)obj->iopgd, SZ_16K))
  return -EINVAL;

 pa = virt_to_phys(obj->iopgd);
 if (!IS_ALIGNED(pa, SZ_16K))
  return -EINVAL;

 iommu_write_reg(obj, MMU_SYS_SOFTRESET, MMU_SYSCONFIG);

 timeout = jiffies + msecs_to_jiffies(20);
 do {
  l = iommu_read_reg(obj, MMU_SYSSTATUS);
  if (l & MMU_SYS_RESETDONE)
   break;
 } while (!time_after(jiffies, timeout));

 if (!(l & MMU_SYS_RESETDONE)) {
  dev_err(obj->dev, "can't take mmu out of reset\n");
  return -ENODEV;
 }

 l = iommu_read_reg(obj, MMU_REVISION);
 dev_info(obj->dev, "%s: version %d.%d\n", obj->name,
   (l >> 4) & 0xf, l & 0xf);

 l = iommu_read_reg(obj, MMU_SYSCONFIG);
 l &= ~MMU_SYS_IDLE_MASK;
 l |= (MMU_SYS_IDLE_SMART | MMU_SYS_AUTOIDLE);
 iommu_write_reg(obj, l, MMU_SYSCONFIG);

 iommu_write_reg(obj, MMU_IRQ_MASK, MMU_IRQENABLE);
 iommu_write_reg(obj, pa, MMU_TTB);

 l = iommu_read_reg(obj, MMU_CNTL);
 l &= ~MMU_CNTL_MASK;
 l |= (MMU_CNTL_MMU_EN | MMU_CNTL_TWL_EN);
 iommu_write_reg(obj, l, MMU_CNTL);

 return 0;
}
