
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu {int name; int dev; } ;


 int MMU_CNTL ;
 int MMU_CNTL_MASK ;
 int MMU_SYSCONFIG ;
 int MMU_SYS_IDLE_FORCE ;
 int dev_dbg (int ,char*,int ) ;
 int iommu_read_reg (struct iommu*,int ) ;
 int iommu_write_reg (struct iommu*,int ,int ) ;

__attribute__((used)) static void omap2_iommu_disable(struct iommu *obj)
{
 u32 l = iommu_read_reg(obj, MMU_CNTL);

 l &= ~MMU_CNTL_MASK;
 iommu_write_reg(obj, l, MMU_CNTL);
 iommu_write_reg(obj, MMU_SYS_IDLE_FORCE, MMU_SYSCONFIG);

 dev_dbg(obj->dev, "%s is shutting down\n", obj->name);
}
