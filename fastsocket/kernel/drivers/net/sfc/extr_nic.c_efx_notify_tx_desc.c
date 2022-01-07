
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {unsigned int write_count; unsigned int ptr_mask; int queue; int efx; } ;
typedef int efx_dword_t ;


 int EFX_POPULATE_DWORD_1 (int ,int ,unsigned int) ;
 int FRF_AZ_TX_DESC_WPTR_DWORD ;
 int FR_AZ_TX_DESC_UPD_DWORD_P0 ;
 int efx_writed_page (int ,int *,int ,int ) ;

__attribute__((used)) static inline void efx_notify_tx_desc(struct efx_tx_queue *tx_queue)
{
 unsigned write_ptr;
 efx_dword_t reg;

 write_ptr = tx_queue->write_count & tx_queue->ptr_mask;
 EFX_POPULATE_DWORD_1(reg, FRF_AZ_TX_DESC_WPTR_DWORD, write_ptr);
 efx_writed_page(tx_queue->efx, &reg,
   FR_AZ_TX_DESC_UPD_DWORD_P0, tx_queue->queue);
}
