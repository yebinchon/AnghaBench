
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_rss_config_obj {int ind_table; scalar_t__ udp_rss_v6; scalar_t__ udp_rss_v4; } ;
struct bnx2x_config_rss_params {int rss_flags; int rss_key; int ind_table; int rss_result_mask; int ramrod_flags; struct bnx2x_rss_config_obj* rss_obj; int * member_0; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_RSS_IPV4 ;
 int BNX2X_RSS_IPV4_TCP ;
 int BNX2X_RSS_IPV4_UDP ;
 int BNX2X_RSS_IPV6 ;
 int BNX2X_RSS_IPV6_TCP ;
 int BNX2X_RSS_IPV6_UDP ;
 int BNX2X_RSS_MODE_REGULAR ;
 int BNX2X_RSS_SET_SRCH ;
 int MULTI_MASK ;
 int RAMROD_COMP_WAIT ;
 int __set_bit (int ,int *) ;
 int bnx2x_config_rss (struct bnx2x*,struct bnx2x_config_rss_params*) ;
 int memcpy (int ,int ,int) ;
 int prandom_bytes (int ,int) ;

int bnx2x_config_rss_pf(struct bnx2x *bp, struct bnx2x_rss_config_obj *rss_obj,
   bool config_hash)
{
 struct bnx2x_config_rss_params params = {((void*)0)};
 params.rss_obj = rss_obj;

 __set_bit(RAMROD_COMP_WAIT, &params.ramrod_flags);

 __set_bit(BNX2X_RSS_MODE_REGULAR, &params.rss_flags);


 __set_bit(BNX2X_RSS_IPV4, &params.rss_flags);
 __set_bit(BNX2X_RSS_IPV4_TCP, &params.rss_flags);
 __set_bit(BNX2X_RSS_IPV6, &params.rss_flags);
 __set_bit(BNX2X_RSS_IPV6_TCP, &params.rss_flags);
 if (rss_obj->udp_rss_v4)
  __set_bit(BNX2X_RSS_IPV4_UDP, &params.rss_flags);
 if (rss_obj->udp_rss_v6)
  __set_bit(BNX2X_RSS_IPV6_UDP, &params.rss_flags);


 params.rss_result_mask = MULTI_MASK;

 memcpy(params.ind_table, rss_obj->ind_table, sizeof(params.ind_table));

 if (config_hash) {

  prandom_bytes(params.rss_key, sizeof(params.rss_key));
  __set_bit(BNX2X_RSS_SET_SRCH, &params.rss_flags);
 }

 return bnx2x_config_rss(bp, &params);
}
