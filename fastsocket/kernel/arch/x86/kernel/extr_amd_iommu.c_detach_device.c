
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct protection_domain {int dummy; } ;


 int __detach_device (struct protection_domain*,int ) ;
 int amd_iommu_devtable_lock ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void detach_device(struct protection_domain *domain, u16 devid)
{
 unsigned long flags;


 write_lock_irqsave(&amd_iommu_devtable_lock, flags);
 __detach_device(domain, devid);
 write_unlock_irqrestore(&amd_iommu_devtable_lock, flags);
}
