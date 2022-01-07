
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocrdma_qp_hwq_info {void* va; int entry_size; } ;



__attribute__((used)) static void *ocrdma_hwq_head_from_idx(struct ocrdma_qp_hwq_info *q,
          u32 idx)
{
 return q->va + (idx * q->entry_size);
}
