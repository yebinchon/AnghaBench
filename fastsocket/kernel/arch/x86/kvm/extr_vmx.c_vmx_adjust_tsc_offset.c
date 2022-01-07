
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm_vcpu {int vcpu_id; } ;
typedef scalar_t__ s64 ;


 int TSC_OFFSET ;
 int trace_kvm_write_tsc_offset (int ,scalar_t__,scalar_t__) ;
 scalar_t__ vmcs_read64 (int ) ;
 int vmcs_write64 (int ,scalar_t__) ;

__attribute__((used)) static void vmx_adjust_tsc_offset(struct kvm_vcpu *vcpu, s64 adjustment, bool host)
{
 u64 offset = vmcs_read64(TSC_OFFSET);
 vmcs_write64(TSC_OFFSET, offset + adjustment);

 trace_kvm_write_tsc_offset(vcpu->vcpu_id, offset,
       offset + adjustment);
}
