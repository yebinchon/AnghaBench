
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pv_mmu_op_buffer {unsigned int len; void* ptr; } ;



__attribute__((used)) static void *pv_mmu_peek_buffer(struct kvm_pv_mmu_op_buffer *buffer,
    unsigned len)
{
 if (len > buffer->len)
  return ((void*)0);
 return buffer->ptr;
}
