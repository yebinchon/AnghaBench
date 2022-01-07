
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fastpath {int sge_mask; } ;


 int BIT_VEC64_CLEAR_BIT (int ,int) ;
 int NUM_RX_SGE_PAGES ;
 int RX_SGE_CNT ;

__attribute__((used)) static inline void bnx2x_clear_sge_mask_next_elems(struct bnx2x_fastpath *fp)
{
 int i, j;

 for (i = 1; i <= NUM_RX_SGE_PAGES; i++) {
  int idx = RX_SGE_CNT * i - 1;

  for (j = 0; j < 2; j++) {
   BIT_VEC64_CLEAR_BIT(fp->sge_mask, idx);
   idx--;
  }
 }
}
