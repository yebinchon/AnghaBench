
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_COALESCED_MMIO_PAGE_OFFSET ;
 int iommu_found () ;

int kvm_dev_ioctl_check_extension(long ext)
{

 int r;

 switch (ext) {
 case 130:
 case 128:
 case 129:
  r = 1;
  break;
 case 132:
  r = KVM_COALESCED_MMIO_PAGE_OFFSET;
  break;
 case 131:
  r = iommu_found();
  break;
 default:
  r = 0;
 }
 return r;

}
