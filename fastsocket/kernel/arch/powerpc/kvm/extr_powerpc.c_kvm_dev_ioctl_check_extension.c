
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_COALESCED_MMIO_PAGE_OFFSET ;

int kvm_dev_ioctl_check_extension(long ext)
{
 int r;

 switch (ext) {
 case 128:
  r = KVM_COALESCED_MMIO_PAGE_OFFSET;
  break;
 default:
  r = 0;
  break;
 }
 return r;

}
