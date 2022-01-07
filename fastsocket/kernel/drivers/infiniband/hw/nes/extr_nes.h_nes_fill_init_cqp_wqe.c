
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_hw_cqp_wqe {scalar_t__* wqe_words; } ;
struct nes_device {int dummy; } ;


 size_t NES_CQP_STAG_WQE_LEN_LOW_IDX ;
 size_t NES_CQP_STAG_WQE_PA_HIGH_IDX ;
 size_t NES_CQP_STAG_WQE_PA_LOW_IDX ;
 size_t NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX ;
 size_t NES_CQP_STAG_WQE_PBL_LEN_IDX ;
 size_t NES_CQP_WQE_COMP_CTX_HIGH_IDX ;
 size_t NES_CQP_WQE_COMP_CTX_LOW_IDX ;
 size_t NES_CQP_WQE_COMP_SCRATCH_HIGH_IDX ;
 size_t NES_CQP_WQE_COMP_SCRATCH_LOW_IDX ;

__attribute__((used)) static inline void
nes_fill_init_cqp_wqe(struct nes_hw_cqp_wqe *cqp_wqe, struct nes_device *nesdev)
{
 cqp_wqe->wqe_words[NES_CQP_WQE_COMP_CTX_LOW_IDX] = 0;
 cqp_wqe->wqe_words[NES_CQP_WQE_COMP_CTX_HIGH_IDX] = 0;
 cqp_wqe->wqe_words[NES_CQP_WQE_COMP_SCRATCH_LOW_IDX] = 0;
 cqp_wqe->wqe_words[NES_CQP_WQE_COMP_SCRATCH_HIGH_IDX] = 0;
 cqp_wqe->wqe_words[NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX] = 0;
 cqp_wqe->wqe_words[NES_CQP_STAG_WQE_PBL_LEN_IDX] = 0;
 cqp_wqe->wqe_words[NES_CQP_STAG_WQE_LEN_LOW_IDX] = 0;
 cqp_wqe->wqe_words[NES_CQP_STAG_WQE_PA_LOW_IDX] = 0;
 cqp_wqe->wqe_words[NES_CQP_STAG_WQE_PA_HIGH_IDX] = 0;
}
