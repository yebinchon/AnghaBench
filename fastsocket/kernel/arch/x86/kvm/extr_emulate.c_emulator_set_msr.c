
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct x86_emulate_ctxt {int vcpu; } ;
struct msr_data {int host_initiated; int index; int data; } ;


 int kvm_set_msr (int ,struct msr_data*) ;

__attribute__((used)) static int emulator_set_msr(struct x86_emulate_ctxt *ctxt,
       u32 msr_index, u64 data)
{
 struct msr_data msr;

 msr.data = data;
 msr.index = msr_index;
 msr.host_initiated = 0;
 return kvm_set_msr(ctxt->vcpu, &msr);
}
