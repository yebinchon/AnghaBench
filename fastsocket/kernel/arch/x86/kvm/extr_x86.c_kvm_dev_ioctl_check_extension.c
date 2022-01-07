
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cpu_has_accelerated_tpr ) () ;} ;
 int KVM_COALESCED_MMIO_PAGE_OFFSET ;
 int KVM_MAX_MCE_BANKS ;
 int KVM_MAX_VCPUS ;
 int KVM_MEMORY_SLOTS ;
 int X86_FEATURE_TSC_DEADLINE_TIMER ;
 int boot_cpu_has (int ) ;
 int cpu_has_xsave ;
 int iommu_found () ;
 int kvm_has_tsc_control ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 () ;

int kvm_dev_ioctl_check_extension(long ext)
{
 int r;

 switch (ext) {
 case 151:
 case 155:
 case 146:
 case 135:
 case 157:
 case 159:
 case 141:
 case 144:
 case 145:
 case 134:
 case 137:
 case 149:
 case 160:
 case 150:
 case 153:
 case 140:
 case 139:
 case 136:
 case 161:
 case 130:
 case 154:
 case 128:
 case 156:
 case 148:
  r = 1;
  break;
 case 158:
  r = KVM_COALESCED_MMIO_PAGE_OFFSET;
  break;
 case 131:
  r = !kvm_x86_ops->cpu_has_accelerated_tpr();
  break;
 case 142:
  r = KVM_MAX_VCPUS;
  break;
 case 143:
  r = KVM_MEMORY_SLOTS;
  break;
 case 138:
  r = 0;
  break;
 case 152:
  r = iommu_found();
  break;
 case 147:
  r = KVM_MAX_MCE_BANKS;
  break;
 case 129:
  r = cpu_has_xsave;
  break;
 case 133:
  r = kvm_has_tsc_control;
  break;
 case 132:
  r = boot_cpu_has(X86_FEATURE_TSC_DEADLINE_TIMER);
  break;
 default:
  r = 0;
  break;
 }
 return r;

}
