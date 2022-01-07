
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iotlb_lock {int base; int vict; } ;
struct iommu {int dummy; } ;


 int BUG_ON (int) ;
 int MMU_LOCK ;
 int MMU_LOCK_BASE (int ) ;
 int MMU_LOCK_VICT (int ) ;
 int iommu_read_reg (struct iommu*,int ) ;

__attribute__((used)) static void iotlb_lock_get(struct iommu *obj, struct iotlb_lock *l)
{
 u32 val;

 val = iommu_read_reg(obj, MMU_LOCK);

 l->base = MMU_LOCK_BASE(val);
 l->vict = MMU_LOCK_VICT(val);

 BUG_ON(l->base != 0);
}
