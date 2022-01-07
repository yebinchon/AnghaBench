
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pv_mmu_op_buffer {int processed; int len; int ptr; } ;


 void* pv_mmu_peek_buffer (struct kvm_pv_mmu_op_buffer*,unsigned int) ;

__attribute__((used)) static void *pv_mmu_read_buffer(struct kvm_pv_mmu_op_buffer *buffer,
    unsigned len)
{
 void *ret;

 ret = pv_mmu_peek_buffer(buffer, len);
 if (!ret)
  return ret;
 buffer->ptr += len;
 buffer->len -= len;
 buffer->processed += len;
 return ret;
}
