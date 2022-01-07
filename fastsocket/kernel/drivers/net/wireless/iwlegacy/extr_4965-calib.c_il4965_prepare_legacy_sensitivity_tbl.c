
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct il_sensitivity_data {scalar_t__ nrg_th_cck; scalar_t__ auto_corr_cck_mrc; scalar_t__ auto_corr_cck; scalar_t__ nrg_th_ofdm; scalar_t__ auto_corr_ofdm_mrc_x1; scalar_t__ auto_corr_ofdm_x1; scalar_t__ auto_corr_ofdm_mrc; scalar_t__ auto_corr_ofdm; int nrg_th_cca; int barker_corr_th_min_mrc; int barker_corr_th_min; } ;
struct il_priv {int dummy; } ;
typedef int __le16 ;


 int D_CALIB (char*,scalar_t__,scalar_t__,scalar_t__,...) ;
 size_t HD_AUTO_CORR32_X1_TH_ADD_MIN_IDX ;
 size_t HD_AUTO_CORR32_X1_TH_ADD_MIN_MRC_IDX ;
 size_t HD_AUTO_CORR32_X4_TH_ADD_MIN_IDX ;
 size_t HD_AUTO_CORR32_X4_TH_ADD_MIN_MRC_IDX ;
 size_t HD_AUTO_CORR40_X4_TH_ADD_MIN_IDX ;
 size_t HD_AUTO_CORR40_X4_TH_ADD_MIN_MRC_IDX ;
 size_t HD_BARKER_CORR_TH_ADD_MIN_IDX ;
 size_t HD_BARKER_CORR_TH_ADD_MIN_MRC_IDX ;
 size_t HD_MIN_ENERGY_CCK_DET_IDX ;
 size_t HD_MIN_ENERGY_OFDM_DET_IDX ;
 size_t HD_OFDM_ENERGY_TH_IN_IDX ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void
il4965_prepare_legacy_sensitivity_tbl(struct il_priv *il,
          struct il_sensitivity_data *data,
          __le16 *tbl)
{
 tbl[HD_AUTO_CORR32_X4_TH_ADD_MIN_IDX] =
     cpu_to_le16((u16) data->auto_corr_ofdm);
 tbl[HD_AUTO_CORR32_X4_TH_ADD_MIN_MRC_IDX] =
     cpu_to_le16((u16) data->auto_corr_ofdm_mrc);
 tbl[HD_AUTO_CORR32_X1_TH_ADD_MIN_IDX] =
     cpu_to_le16((u16) data->auto_corr_ofdm_x1);
 tbl[HD_AUTO_CORR32_X1_TH_ADD_MIN_MRC_IDX] =
     cpu_to_le16((u16) data->auto_corr_ofdm_mrc_x1);

 tbl[HD_AUTO_CORR40_X4_TH_ADD_MIN_IDX] =
     cpu_to_le16((u16) data->auto_corr_cck);
 tbl[HD_AUTO_CORR40_X4_TH_ADD_MIN_MRC_IDX] =
     cpu_to_le16((u16) data->auto_corr_cck_mrc);

 tbl[HD_MIN_ENERGY_CCK_DET_IDX] = cpu_to_le16((u16) data->nrg_th_cck);
 tbl[HD_MIN_ENERGY_OFDM_DET_IDX] = cpu_to_le16((u16) data->nrg_th_ofdm);

 tbl[HD_BARKER_CORR_TH_ADD_MIN_IDX] =
     cpu_to_le16(data->barker_corr_th_min);
 tbl[HD_BARKER_CORR_TH_ADD_MIN_MRC_IDX] =
     cpu_to_le16(data->barker_corr_th_min_mrc);
 tbl[HD_OFDM_ENERGY_TH_IN_IDX] = cpu_to_le16(data->nrg_th_cca);

 D_CALIB("ofdm: ac %u mrc %u x1 %u mrc_x1 %u thresh %u\n",
  data->auto_corr_ofdm, data->auto_corr_ofdm_mrc,
  data->auto_corr_ofdm_x1, data->auto_corr_ofdm_mrc_x1,
  data->nrg_th_ofdm);

 D_CALIB("cck: ac %u mrc %u thresh %u\n", data->auto_corr_cck,
  data->auto_corr_cck_mrc, data->nrg_th_cck);
}
