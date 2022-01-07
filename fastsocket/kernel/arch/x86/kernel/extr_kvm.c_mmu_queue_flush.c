
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_para_state {scalar_t__ mmu_queue_len; int mmu_queue; } ;


 int kvm_mmu_op (int ,scalar_t__) ;

__attribute__((used)) static void mmu_queue_flush(struct kvm_para_state *state)
{
 if (state->mmu_queue_len) {
  kvm_mmu_op(state->mmu_queue, state->mmu_queue_len);
  state->mmu_queue_len = 0;
 }
}
