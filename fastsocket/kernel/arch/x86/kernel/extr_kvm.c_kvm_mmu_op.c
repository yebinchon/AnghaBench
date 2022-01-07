
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_HC_MMU_OP ;
 unsigned long __pa (void*) ;
 int kvm_hypercall3 (int ,unsigned int,unsigned long,unsigned long) ;

__attribute__((used)) static void kvm_mmu_op(void *buffer, unsigned len)
{
 int r;
 unsigned long a1, a2;

 do {
  a1 = __pa(buffer);
  a2 = 0;
  r = kvm_hypercall3(KVM_HC_MMU_OP, len, a1, a2);
  buffer += r;
  len -= r;
 } while (len);
}
