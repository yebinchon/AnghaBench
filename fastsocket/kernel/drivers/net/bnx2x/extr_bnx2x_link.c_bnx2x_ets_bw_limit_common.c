
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int ETS_BW_LIMIT_CREDIT_UPPER_BOUND ;
 int NETIF_MSG_LINK ;
 int NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP ;
 int NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT ;
 int NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1 ;
 int PBF_REG_COS0_UPPER_BOUND ;
 int PBF_REG_COS1_UPPER_BOUND ;
 int PBF_REG_ETS_ENABLED ;
 int PBF_REG_NUM_STRICT_ARB_SLOTS ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_ets_bw_limit_common(const struct link_params *params)
{

 struct bnx2x *bp = params->bp;
 DP(NETIF_MSG_LINK, "ETS enabled BW limit configuration\n");




 REG_WR(bp, NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ, 0x18);






 REG_WR(bp, NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP, 0x111A);

 REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0,
        ETS_BW_LIMIT_CREDIT_UPPER_BOUND);
 REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1,
        ETS_BW_LIMIT_CREDIT_UPPER_BOUND);


 REG_WR(bp, PBF_REG_ETS_ENABLED, 1);


 REG_WR(bp, PBF_REG_NUM_STRICT_ARB_SLOTS, 0);







 REG_WR(bp, NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT, 0x7);


 REG_WR(bp, PBF_REG_COS0_UPPER_BOUND,
        ETS_BW_LIMIT_CREDIT_UPPER_BOUND);
 REG_WR(bp, PBF_REG_COS1_UPPER_BOUND,
        ETS_BW_LIMIT_CREDIT_UPPER_BOUND);
}
