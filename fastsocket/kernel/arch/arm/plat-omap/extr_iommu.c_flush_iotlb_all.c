
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iotlb_lock {scalar_t__ vict; scalar_t__ base; } ;
struct iommu {int clk; } ;


 int MMU_GFLUSH ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int iommu_write_reg (struct iommu*,int,int ) ;
 int iotlb_lock_set (struct iommu*,struct iotlb_lock*) ;

void flush_iotlb_all(struct iommu *obj)
{
 struct iotlb_lock l;

 clk_enable(obj->clk);

 l.base = 0;
 l.vict = 0;
 iotlb_lock_set(obj, &l);

 iommu_write_reg(obj, 1, MMU_GFLUSH);

 clk_disable(obj->clk);
}
