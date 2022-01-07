
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fastpath {int sge_mask; } ;


 int bnx2x_clear_sge_mask_next_elems (struct bnx2x_fastpath*) ;
 int memset (int ,int,int) ;

__attribute__((used)) static inline void bnx2x_init_sge_ring_bit_mask(struct bnx2x_fastpath *fp)
{

 memset(fp->sge_mask, 0xff, sizeof(fp->sge_mask));





 bnx2x_clear_sge_mask_next_elems(fp);
}
