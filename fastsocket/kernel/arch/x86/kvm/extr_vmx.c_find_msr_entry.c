
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vcpu_vmx {struct shared_msr_entry* guest_msrs; } ;
struct shared_msr_entry {int dummy; } ;


 int __find_msr_index (struct vcpu_vmx*,int ) ;

__attribute__((used)) static struct shared_msr_entry *find_msr_entry(struct vcpu_vmx *vmx, u32 msr)
{
 int i;

 i = __find_msr_index(vmx, msr);
 if (i >= 0)
  return &vmx->guest_msrs[i];
 return ((void*)0);
}
