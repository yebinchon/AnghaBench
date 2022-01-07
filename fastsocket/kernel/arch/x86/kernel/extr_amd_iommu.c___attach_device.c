
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct protection_domain {int dev_cnt; int lock; } ;
struct amd_iommu {int dummy; } ;


 int set_dte_entry (int ,struct protection_domain*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __attach_device(struct amd_iommu *iommu,
       struct protection_domain *domain,
       u16 devid)
{

 spin_lock(&domain->lock);


 set_dte_entry(devid, domain);

 domain->dev_cnt += 1;


 spin_unlock(&domain->lock);
}
