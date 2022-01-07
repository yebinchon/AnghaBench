
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ioat_raw_descriptor {scalar_t__* field; } ;
struct ioat_pq_descriptor {int * coef; } ;
typedef scalar_t__ dma_addr_t ;


 int pq_idx_to_desc ;
 size_t* pq_idx_to_field ;

__attribute__((used)) static void pq_set_src(struct ioat_raw_descriptor *descs[2],
         dma_addr_t addr, u32 offset, u8 coef, int idx)
{
 struct ioat_pq_descriptor *pq = (struct ioat_pq_descriptor *) descs[0];
 struct ioat_raw_descriptor *raw = descs[pq_idx_to_desc >> idx & 1];

 raw->field[pq_idx_to_field[idx]] = addr + offset;
 pq->coef[idx] = coef;
}
