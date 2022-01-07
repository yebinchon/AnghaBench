
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int * rx_indir_table; } ;
typedef int efx_dword_t ;


 size_t ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 int EFX_POPULATE_DWORD_1 (int ,int ,int ) ;
 scalar_t__ EFX_REV_FALCON_B0 ;
 int FRF_BZ_IT_QUEUE ;
 scalar_t__ FR_BZ_RX_INDIRECTION_TBL ;
 size_t FR_BZ_RX_INDIRECTION_TBL_ROWS ;
 size_t FR_BZ_RX_INDIRECTION_TBL_STEP ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_writed (struct efx_nic*,int *,scalar_t__) ;

void efx_nic_push_rx_indir_table(struct efx_nic *efx)
{
 size_t i = 0;
 efx_dword_t dword;

 if (efx_nic_rev(efx) < EFX_REV_FALCON_B0)
  return;

 BUILD_BUG_ON(ARRAY_SIZE(efx->rx_indir_table) !=
       FR_BZ_RX_INDIRECTION_TBL_ROWS);

 for (i = 0; i < FR_BZ_RX_INDIRECTION_TBL_ROWS; i++) {
  EFX_POPULATE_DWORD_1(dword, FRF_BZ_IT_QUEUE,
         efx->rx_indir_table[i]);
  efx_writed(efx, &dword,
      FR_BZ_RX_INDIRECTION_TBL +
      FR_BZ_RX_INDIRECTION_TBL_STEP * i);
 }
}
