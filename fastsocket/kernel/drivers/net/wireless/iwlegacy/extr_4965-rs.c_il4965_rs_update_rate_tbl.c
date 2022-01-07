
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct il_scale_tbl_info {int dummy; } ;
struct il_priv {int dummy; } ;
struct il_lq_sta {int lq; } ;


 int CMD_ASYNC ;
 int il4965_rate_n_flags_from_tbl (struct il_priv*,struct il_scale_tbl_info*,int,int ) ;
 int il4965_rs_fill_link_cmd (struct il_priv*,struct il_lq_sta*,int ) ;
 int il_send_lq_cmd (struct il_priv*,int *,int ,int) ;

__attribute__((used)) static void
il4965_rs_update_rate_tbl(struct il_priv *il, struct il_lq_sta *lq_sta,
     struct il_scale_tbl_info *tbl, int idx, u8 is_green)
{
 u32 rate;


 rate = il4965_rate_n_flags_from_tbl(il, tbl, idx, is_green);
 il4965_rs_fill_link_cmd(il, lq_sta, rate);
 il_send_lq_cmd(il, &lq_sta->lq, CMD_ASYNC, 0);
}
