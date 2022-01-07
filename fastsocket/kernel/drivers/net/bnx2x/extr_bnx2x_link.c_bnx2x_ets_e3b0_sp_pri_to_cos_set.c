
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct link_params {scalar_t__ port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ DCBX_E3B0_MAX_NUM_COS_PORT0 ;
 scalar_t__ DCBX_E3B0_MAX_NUM_COS_PORT1 ;
 scalar_t__ DCBX_INVALID_COS ;
 int DP (int ,char*) ;
 int EINVAL ;
 int NETIF_MSG_LINK ;

__attribute__((used)) static int bnx2x_ets_e3b0_sp_pri_to_cos_set(const struct link_params *params,
         u8 *sp_pri_to_cos, const u8 pri,
         const u8 cos_entry)
{
 struct bnx2x *bp = params->bp;
 const u8 port = params->port;
 const u8 max_num_of_cos = (port) ? DCBX_E3B0_MAX_NUM_COS_PORT1 :
  DCBX_E3B0_MAX_NUM_COS_PORT0;

 if (pri >= max_num_of_cos) {
  DP(NETIF_MSG_LINK, "bnx2x_ets_e3b0_sp_pri_to_cos_set invalid "
     "parameter Illegal strict priority\n");
     return -EINVAL;
 }

 if (sp_pri_to_cos[pri] != DCBX_INVALID_COS) {
  DP(NETIF_MSG_LINK, "bnx2x_ets_e3b0_sp_pri_to_cos_set invalid "
       "parameter There can't be two COS's with "
       "the same strict pri\n");
  return -EINVAL;
 }

 sp_pri_to_cos[pri] = cos_entry;
 return 0;

}
