
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nes_qp {int dummy; } ;
struct nes_hw_qp_wqe {int wqe_words; } ;


 int NES_IWARP_SQ_WQE_COMP_CTX_HIGH_IDX ;
 int NES_IWARP_SQ_WQE_COMP_CTX_LOW_IDX ;
 int set_wqe_32bit_value (int ,int ,int) ;
 scalar_t__ upper_32_bits (unsigned long) ;

__attribute__((used)) static inline void
nes_fill_init_qp_wqe(struct nes_hw_qp_wqe *wqe, struct nes_qp *nesqp, u32 head)
{
 u32 value;
 value = ((u32)((unsigned long) nesqp)) | head;
 set_wqe_32bit_value(wqe->wqe_words, NES_IWARP_SQ_WQE_COMP_CTX_HIGH_IDX,
   (u32)(upper_32_bits((unsigned long)(nesqp))));
 set_wqe_32bit_value(wqe->wqe_words, NES_IWARP_SQ_WQE_COMP_CTX_LOW_IDX, value);
}
