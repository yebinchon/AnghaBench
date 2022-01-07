
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu {int dummy; } ;
struct cr_regs {int cam; int ram; } ;


 int MMU_CAM ;
 int MMU_CAM_V ;
 int MMU_RAM ;
 int iommu_write_reg (struct iommu*,int,int ) ;

__attribute__((used)) static void omap2_tlb_load_cr(struct iommu *obj, struct cr_regs *cr)
{
 iommu_write_reg(obj, cr->cam | MMU_CAM_V, MMU_CAM);
 iommu_write_reg(obj, cr->ram, MMU_RAM);
}
