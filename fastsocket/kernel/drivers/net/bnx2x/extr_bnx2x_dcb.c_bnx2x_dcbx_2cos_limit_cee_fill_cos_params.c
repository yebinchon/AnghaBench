
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pg_help_data {int num_of_pg; } ;
struct dcbx_ets_feature {int dummy; } ;
struct cos_help_data {int num_of_cos; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 int DCBX_COS_MAX_NUM_E2 ;
 int bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params (struct bnx2x*,struct pg_help_data*,struct cos_help_data*,int ,int ) ;
 int bnx2x_dcbx_2cos_limit_cee_three_pg_to_cos_params (struct bnx2x*,struct pg_help_data*,struct dcbx_ets_feature*,struct cos_help_data*,int *,int ,int ) ;
 int bnx2x_dcbx_2cos_limit_cee_two_pg_to_cos_params (struct bnx2x*,struct pg_help_data*,struct dcbx_ets_feature*,struct cos_help_data*,int *,int ,int ) ;
 int bnx2x_dcbx_ets_disabled_entry_data (struct bnx2x*,struct cos_help_data*,int ) ;

__attribute__((used)) static void bnx2x_dcbx_2cos_limit_cee_fill_cos_params(struct bnx2x *bp,
           struct pg_help_data *help_data,
           struct dcbx_ets_feature *ets,
           struct cos_help_data *cos_data,
           u32 *pg_pri_orginal_spread,
           u32 pri_join_mask,
           u8 num_of_dif_pri)
{

 cos_data->num_of_cos = DCBX_COS_MAX_NUM_E2;

 switch (help_data->num_of_pg) {
 case 1:
  bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params(
            bp,
            help_data,
            cos_data,
            pri_join_mask,
            num_of_dif_pri);
  break;
 case 2:
  bnx2x_dcbx_2cos_limit_cee_two_pg_to_cos_params(
         bp,
         help_data,
         ets,
         cos_data,
         pg_pri_orginal_spread,
         pri_join_mask,
         num_of_dif_pri);
  break;

 case 3:
  bnx2x_dcbx_2cos_limit_cee_three_pg_to_cos_params(
           bp,
           help_data,
           ets,
           cos_data,
           pg_pri_orginal_spread,
           pri_join_mask,
           num_of_dif_pri);
  break;
 default:
  BNX2X_ERR("Wrong pg_help_data.num_of_pg\n");
  bnx2x_dcbx_ets_disabled_entry_data(bp,
         cos_data, pri_join_mask);
 }
}
