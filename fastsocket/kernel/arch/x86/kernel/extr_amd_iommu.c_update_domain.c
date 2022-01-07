
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int updated; int id; } ;


 int flush_devices_by_domain (struct protection_domain*) ;
 int iommu_flush_domain (int ) ;
 int update_device_table (struct protection_domain*) ;

__attribute__((used)) static void update_domain(struct protection_domain *domain)
{
 if (!domain->updated)
  return;

 update_device_table(domain);
 flush_devices_by_domain(domain);
 iommu_flush_domain(domain->id);

 domain->updated = 0;
}
