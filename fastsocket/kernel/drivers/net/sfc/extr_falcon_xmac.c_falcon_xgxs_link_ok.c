
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 int EFX_OWORD_FIELD (int ,int ) ;
 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 int FFE_AB_XX_STAT_ALL_LANES ;
 int FRF_AB_XX_ALIGN_DONE ;
 int FRF_AB_XX_CHAR_ERR ;
 int FRF_AB_XX_COMMA_DET ;
 int FRF_AB_XX_DISPERR ;
 int FRF_AB_XX_SYNC_STAT ;
 int FR_AB_XX_CORE_STAT ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;

__attribute__((used)) static bool falcon_xgxs_link_ok(struct efx_nic *efx)
{
 efx_oword_t reg;
 bool align_done, link_ok = 0;
 int sync_status;


 efx_reado(efx, &reg, FR_AB_XX_CORE_STAT);

 align_done = EFX_OWORD_FIELD(reg, FRF_AB_XX_ALIGN_DONE);
 sync_status = EFX_OWORD_FIELD(reg, FRF_AB_XX_SYNC_STAT);
 if (align_done && (sync_status == FFE_AB_XX_STAT_ALL_LANES))
  link_ok = 1;


 EFX_SET_OWORD_FIELD(reg, FRF_AB_XX_COMMA_DET, FFE_AB_XX_STAT_ALL_LANES);
 EFX_SET_OWORD_FIELD(reg, FRF_AB_XX_CHAR_ERR, FFE_AB_XX_STAT_ALL_LANES);
 EFX_SET_OWORD_FIELD(reg, FRF_AB_XX_DISPERR, FFE_AB_XX_STAT_ALL_LANES);
 efx_writeo(efx, &reg, FR_AB_XX_CORE_STAT);

 return link_ok;
}
