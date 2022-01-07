
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int vcpu_id; } ;


 int TSC_OFFSET ;
 int trace_kvm_write_tsc_offset (int ,int ,int ) ;
 int vmcs_read64 (int ) ;
 int vmcs_write64 (int ,int ) ;

__attribute__((used)) static void vmx_write_tsc_offset(struct kvm_vcpu *vcpu, u64 offset)
{
 trace_kvm_write_tsc_offset(vcpu->vcpu_id, vmcs_read64(TSC_OFFSET),
       offset);
 vmcs_write64(TSC_OFFSET, offset);
}
