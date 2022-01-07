
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct link_params {scalar_t__ port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_2 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_3 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_4 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_5 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_6 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_7 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_8 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_0 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_1 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_2 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_3 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_4 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_5 ;
 int REG_WR (struct bnx2x*,int ,int const) ;
 int bnx2x_ets_get_credit_upper_bound (int const) ;

__attribute__((used)) static void bnx2x_ets_e3b0_set_credit_upper_bound_nig(
 const struct link_params *params,
 const u32 min_w_val)
{
 struct bnx2x *bp = params->bp;
 const u8 port = params->port;
 const u32 credit_upper_bound =
     bnx2x_ets_get_credit_upper_bound(min_w_val);

 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_0 :
  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0, credit_upper_bound);
 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_1 :
     NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1, credit_upper_bound);
 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_2 :
     NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_2, credit_upper_bound);
 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_3 :
     NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_3, credit_upper_bound);
 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_4 :
     NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_4, credit_upper_bound);
 REG_WR(bp, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_5 :
     NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_5, credit_upper_bound);

 if (!port) {
  REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_6,
   credit_upper_bound);
  REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_7,
   credit_upper_bound);
  REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_8,
   credit_upper_bound);
 }
}
