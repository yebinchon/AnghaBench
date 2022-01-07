
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct efx_tx_queue {unsigned int write_count; unsigned int ptr_mask; int queue; int efx; } ;
typedef int efx_qword_t ;
struct TYPE_4__ {int * qword; } ;
typedef TYPE_1__ efx_oword_t ;


 int BUILD_BUG_ON (int) ;
 int EFX_POPULATE_OWORD_2 (TYPE_1__,int ,int,int ,unsigned int) ;
 scalar_t__ FRF_AZ_TX_DESC_LBN ;
 int FRF_AZ_TX_DESC_PUSH_CMD ;
 int FRF_AZ_TX_DESC_WPTR ;
 scalar_t__ FR_AA_TX_DESC_UPD_KER ;
 scalar_t__ FR_BZ_TX_DESC_UPD_P0 ;
 int efx_writeo_page (int ,TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static inline void efx_push_tx_desc(struct efx_tx_queue *tx_queue,
        const efx_qword_t *txd)
{
 unsigned write_ptr;
 efx_oword_t reg;

 BUILD_BUG_ON(FRF_AZ_TX_DESC_LBN != 0);
 BUILD_BUG_ON(FR_AA_TX_DESC_UPD_KER != FR_BZ_TX_DESC_UPD_P0);

 write_ptr = tx_queue->write_count & tx_queue->ptr_mask;
 EFX_POPULATE_OWORD_2(reg, FRF_AZ_TX_DESC_PUSH_CMD, 1,
        FRF_AZ_TX_DESC_WPTR, write_ptr);
 reg.qword[0] = *txd;
 efx_writeo_page(tx_queue->efx, &reg,
   FR_BZ_TX_DESC_UPD_P0, tx_queue->queue);
}
