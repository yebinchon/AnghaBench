
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long EINVAL ;
 unsigned int KVM_S390_ENABLE_SIE ;
 long s390_enable_sie () ;

long kvm_arch_dev_ioctl(struct file *filp,
   unsigned int ioctl, unsigned long arg)
{
 if (ioctl == KVM_S390_ENABLE_SIE)
  return s390_enable_sie();
 return -EINVAL;
}
