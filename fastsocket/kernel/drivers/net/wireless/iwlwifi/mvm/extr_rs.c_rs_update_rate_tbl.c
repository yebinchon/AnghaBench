
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_scale_tbl_info {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int lq; } ;


 int CMD_ASYNC ;
 int iwl_mvm_send_lq_cmd (struct iwl_mvm*,int *,int ,int) ;
 int rate_n_flags_from_tbl (struct iwl_mvm*,struct iwl_scale_tbl_info*,int,int ) ;
 int rs_fill_link_cmd (struct iwl_mvm*,struct iwl_lq_sta*,int ) ;

__attribute__((used)) static void rs_update_rate_tbl(struct iwl_mvm *mvm,
          struct iwl_lq_sta *lq_sta,
          struct iwl_scale_tbl_info *tbl,
          int index, u8 is_green)
{
 u32 rate;


 rate = rate_n_flags_from_tbl(mvm, tbl, index, is_green);
 rs_fill_link_cmd(mvm, lq_sta, rate);
 iwl_mvm_send_lq_cmd(mvm, &lq_sta->lq, CMD_ASYNC, 0);
}
