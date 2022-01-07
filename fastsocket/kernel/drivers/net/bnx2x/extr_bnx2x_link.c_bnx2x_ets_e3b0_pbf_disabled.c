
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int DCBX_E3B0_MAX_NUM_COS_PORT0 ;
 int DCBX_E3B0_MAX_NUM_COS_PORT1 ;
 scalar_t__ ETS_E3B0_PBF_MIN_W_VAL ;
 scalar_t__ PBF_REG_COS0_WEIGHT_P0 ;
 scalar_t__ PBF_REG_COS0_WEIGHT_P1 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P0 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P1 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P0 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P1 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P0 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P1 ;
 scalar_t__ PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P0 ;
 scalar_t__ PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P1 ;
 scalar_t__ PBF_REG_ETS_ARB_PRIORITY_CLIENT_P0 ;
 scalar_t__ PBF_REG_ETS_ARB_PRIORITY_CLIENT_P1 ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int bnx2x_ets_e3b0_set_credit_upper_bound_pbf (struct link_params const*,scalar_t__ const) ;

__attribute__((used)) static void bnx2x_ets_e3b0_pbf_disabled(const struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 const u8 port = params->port;
 const u32 min_w_val_pbf = ETS_E3B0_PBF_MIN_W_VAL;
 u8 i = 0;
 u32 base_weight = 0;
 u8 max_cos = 0;





 if (port)

  REG_WR(bp, PBF_REG_ETS_ARB_PRIORITY_CLIENT_P1 , 0x688);
 else

  REG_WR(bp, PBF_REG_ETS_ARB_PRIORITY_CLIENT_P0 , 0x2C688);


 if (port)

  REG_WR(bp, PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P1, 0x688);
 else

 REG_WR(bp, PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P0, 0x2C688);

 REG_WR(bp, (port) ? PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P1 :
     PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P0 , 0x100);


 REG_WR(bp, (port) ? PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P1 :
     PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P0 , 0);

 REG_WR(bp, (port) ? PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P1 :
     PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P0 , 0);



 if (!port) {
  base_weight = PBF_REG_COS0_WEIGHT_P0;
  max_cos = DCBX_E3B0_MAX_NUM_COS_PORT0;
 } else {
  base_weight = PBF_REG_COS0_WEIGHT_P1;
  max_cos = DCBX_E3B0_MAX_NUM_COS_PORT1;
 }

 for (i = 0; i < max_cos; i++)
  REG_WR(bp, base_weight + (0x4 * i), 0);

 bnx2x_ets_e3b0_set_credit_upper_bound_pbf(params, min_w_val_pbf);
}
