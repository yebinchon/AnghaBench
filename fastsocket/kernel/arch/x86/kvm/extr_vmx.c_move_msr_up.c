
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {struct shared_msr_entry* guest_msrs; } ;
struct shared_msr_entry {int dummy; } ;



__attribute__((used)) static void move_msr_up(struct vcpu_vmx *vmx, int from, int to)
{
 struct shared_msr_entry tmp;

 tmp = vmx->guest_msrs[to];
 vmx->guest_msrs[to] = vmx->guest_msrs[from];
 vmx->guest_msrs[from] = tmp;
}
