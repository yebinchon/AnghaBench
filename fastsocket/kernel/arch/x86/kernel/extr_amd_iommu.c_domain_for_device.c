
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct protection_domain {int dummy; } ;


 int amd_iommu_devtable_lock ;
 struct protection_domain** amd_iommu_pd_table ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct protection_domain *domain_for_device(u16 devid)
{
 struct protection_domain *dom;
 unsigned long flags;

 read_lock_irqsave(&amd_iommu_devtable_lock, flags);
 dom = amd_iommu_pd_table[devid];
 read_unlock_irqrestore(&amd_iommu_devtable_lock, flags);

 return dom;
}
