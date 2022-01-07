
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct link_vars {int dummy; } ;
struct link_params {scalar_t__ port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_LSB ;
 int NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_MSB ;
 int NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT ;
 int NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_2 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_3 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_4 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_5 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_6 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_7 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_8 ;
 int NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_LSB ;
 int NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_MSB ;
 int NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_LSB ;
 int NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_MSB ;
 int NIG_REG_P1_TX_ARB_CLIENT_IS_STRICT ;
 int NIG_REG_P1_TX_ARB_CLIENT_IS_SUBJECT2WFQ ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_0 ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_1 ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_2 ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_3 ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_4 ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_5 ;
 int NIG_REG_P1_TX_ARB_NUM_STRICT_ARB_SLOTS ;
 int NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_LSB ;
 int NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_MSB ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int bnx2x_ets_e3b0_set_credit_upper_bound_nig (struct link_params const*,int const) ;
 int bnx2x_ets_get_min_w_val_nig (struct link_vars const*) ;

__attribute__((used)) static void bnx2x_ets_e3b0_nig_disabled(const struct link_params *params,
     const struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 const u8 port = params->port;
 const u32 min_w_val = bnx2x_ets_get_min_w_val_nig(vars);





 if (port) {
  REG_WR(bp, NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_LSB, 0x543210);
  REG_WR(bp, NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_MSB, 0x0);
 } else {
  REG_WR(bp, NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_LSB, 0x76543210);
  REG_WR(bp, NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_MSB, 0x8);
 }



 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_NUM_STRICT_ARB_SLOTS :
     NIG_REG_P1_TX_ARB_NUM_STRICT_ARB_SLOTS, 0x100);



 if (port) {

  REG_WR(bp, NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_LSB, 0x210543);
  REG_WR(bp, NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_MSB, 0x0);
 } else {

  REG_WR(bp, NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_LSB,
         0x43210876);
  REG_WR(bp, NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_MSB, 0x5);
 }
 if (port)
  REG_WR(bp, NIG_REG_P1_TX_ARB_CLIENT_IS_STRICT, 0x3f);
 else
  REG_WR(bp, NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT, 0x1ff);

 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CLIENT_IS_SUBJECT2WFQ :
     NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ, 0);







 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_0 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0, 0x0);
 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_1 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1, 0x0);
 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_2 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_2, 0x0);
 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_3 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_3, 0x0);
 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_4 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_4, 0x0);
 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_5 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_5, 0x0);
 if (!port) {
  REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_6, 0x0);
  REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_7, 0x0);
  REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_8, 0x0);
 }

 bnx2x_ets_e3b0_set_credit_upper_bound_nig(params, min_w_val);
}
