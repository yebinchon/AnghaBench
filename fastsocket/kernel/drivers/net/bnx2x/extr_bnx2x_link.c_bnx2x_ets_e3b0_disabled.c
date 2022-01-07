
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_vars {int dummy; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int CHIP_IS_E3B0 (struct bnx2x*) ;
 int DP (int ,char*) ;
 int EINVAL ;
 int NETIF_MSG_LINK ;
 int bnx2x_ets_e3b0_nig_disabled (struct link_params const*,struct link_vars const*) ;
 int bnx2x_ets_e3b0_pbf_disabled (struct link_params const*) ;

__attribute__((used)) static int bnx2x_ets_e3b0_disabled(const struct link_params *params,
       const struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;

 if (!CHIP_IS_E3B0(bp)) {
  DP(NETIF_MSG_LINK,
     "bnx2x_ets_e3b0_disabled the chip isn't E3B0\n");
  return -EINVAL;
 }

 bnx2x_ets_e3b0_nig_disabled(params, vars);

 bnx2x_ets_e3b0_pbf_disabled(params);

 return 0;
}
