
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct pg_help_data {int dummy; } ;
struct dcbx_ets_feature {int pg_bw_tbl; } ;
struct cos_help_data {TYPE_3__* data; } ;
struct TYPE_4__ {int* traffic_type_priority; } ;
struct TYPE_5__ {TYPE_1__ app; } ;
struct bnx2x {TYPE_2__ dcbx_port_params; } ;
struct TYPE_6__ {int pri_join_mask; int strict; int pausable; } ;


 int BNX2X_DCBX_STRICT_COS_HIGHEST ;
 size_t DCBX_MAX_NUM_PG_BW_ENTRIES ;
 int DCBX_PG_BW_GET (int ,size_t) ;
 scalar_t__ IS_DCBX_PFC_PRI_MIX_PAUSE (struct bnx2x*,int) ;
 int IS_DCBX_PFC_PRI_ONLY_PAUSE (struct bnx2x*,int) ;
 size_t LLFC_DRIVER_TRAFFIC_TYPE_MAX ;
 int bnx2x_dcbx_add_to_cos_bw (struct bnx2x*,TYPE_3__*,int ) ;
 int bnx2x_dcbx_separate_pauseable_from_non (struct bnx2x*,struct cos_help_data*,int*,struct dcbx_ets_feature*) ;

__attribute__((used)) static void bnx2x_dcbx_2cos_limit_cee_three_pg_to_cos_params(
         struct bnx2x *bp,
         struct pg_help_data *pg_help_data,
         struct dcbx_ets_feature *ets,
         struct cos_help_data *cos_data,
         u32 *pg_pri_orginal_spread,
         u32 pri_join_mask,
         u8 num_of_dif_pri)
{
 u8 i = 0;
 u32 pri_tested = 0;
 u8 entry = 0;
 u8 pg_entry = 0;
 bool b_found_strict = 0;
 u8 num_of_pri = LLFC_DRIVER_TRAFFIC_TYPE_MAX;

 cos_data->data[0].pri_join_mask = cos_data->data[1].pri_join_mask = 0;




 if (IS_DCBX_PFC_PRI_MIX_PAUSE(bp, pri_join_mask))
  bnx2x_dcbx_separate_pauseable_from_non(bp,
    cos_data, pg_pri_orginal_spread, ets);
 else {
  cos_data->data[0].pausable = cos_data->data[1].pausable =
   IS_DCBX_PFC_PRI_ONLY_PAUSE(bp, pri_join_mask);

  for (i = 0 ; i < num_of_pri; i++) {
   pri_tested = 1 << bp->dcbx_port_params.
    app.traffic_type_priority[i];
   pg_entry = (u8)pg_pri_orginal_spread[bp->
    dcbx_port_params.app.traffic_type_priority[i]];

   if (pg_entry < DCBX_MAX_NUM_PG_BW_ENTRIES) {
    entry = 0;

    if (i == (num_of_pri-1) &&
        0 == b_found_strict)




     entry = 1;
    cos_data->data[entry].pri_join_mask |=
        pri_tested;
    bnx2x_dcbx_add_to_cos_bw(bp,
     &cos_data->data[entry],
     DCBX_PG_BW_GET(ets->pg_bw_tbl,
             pg_entry));
   } else {
    b_found_strict = 1;
    cos_data->data[1].pri_join_mask |= pri_tested;



    cos_data->data[1].strict =
     BNX2X_DCBX_STRICT_COS_HIGHEST;
   }
  }
 }
}
