
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int __u32 ;


 int iommu_get_scsi_one (struct device*,char*,unsigned long) ;

__attribute__((used)) static __u32 iommu_get_scsi_one_noflush(struct device *dev, char *vaddr, unsigned long len)
{
 return iommu_get_scsi_one(dev, vaddr, len);
}
