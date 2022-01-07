
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_scale_tbl_info {int lq_type; int ant_type; } ;
struct iwl_mvm {int fw; } ;
struct iwl_lq_cmd {int mimo_delim; int agg_time_limit; scalar_t__ agg_disable_start_th; int agg_frame_cnt_limit; void** rs_table; int dual_stream_ant_msk; int single_stream_ant_msk; } ;
struct iwl_lq_sta {int band; struct iwl_lq_cmd lq; } ;


 int IWL_HT_NUMBER_TRY ;
 int IWL_NUMBER_TRY ;
 scalar_t__ LINK_QUAL_AGG_DISABLE_START_DEF ;
 int LINK_QUAL_AGG_FRAME_LIMIT_DEF ;
 int LINK_QUAL_AGG_TIME_LIMIT_DEF ;
 int LINK_QUAL_MAX_RETRY_NUM ;
 int NUM_TRY_BEFORE_ANT_TOGGLE ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 scalar_t__ is_legacy (int ) ;
 scalar_t__ is_mimo (int ) ;
 int iwl_fw_valid_tx_ant (int ) ;
 int min (int,scalar_t__) ;
 int num_of_ant (int ) ;
 int rs_dbgfs_set_mcs (struct iwl_lq_sta*,int *,int) ;
 int rs_get_lower_rate (struct iwl_lq_sta*,struct iwl_scale_tbl_info*,int,int) ;
 int rs_get_tbl_info_from_mcs (int ,int ,struct iwl_scale_tbl_info*,int*) ;
 scalar_t__ rs_toggle_antenna (int,int *,struct iwl_scale_tbl_info*) ;

__attribute__((used)) static void rs_fill_link_cmd(struct iwl_mvm *mvm,
        struct iwl_lq_sta *lq_sta, u32 new_rate)
{
 struct iwl_scale_tbl_info tbl_type;
 int index = 0;
 int rate_idx;
 int repeat_rate = 0;
 u8 ant_toggle_cnt = 0;
 u8 use_ht_possible = 1;
 u8 valid_tx_ant = 0;
 struct iwl_lq_cmd *lq_cmd = &lq_sta->lq;


 rs_dbgfs_set_mcs(lq_sta, &new_rate, index);


 rs_get_tbl_info_from_mcs(new_rate, lq_sta->band,
     &tbl_type, &rate_idx);


 if (is_legacy(tbl_type.lq_type)) {
  ant_toggle_cnt = 1;
  repeat_rate = IWL_NUMBER_TRY;
 } else {
  repeat_rate = min(IWL_HT_NUMBER_TRY,
      LINK_QUAL_AGG_DISABLE_START_DEF - 1);
 }

 lq_cmd->mimo_delim = is_mimo(tbl_type.lq_type) ? 1 : 0;


 lq_cmd->rs_table[index] = cpu_to_le32(new_rate);

 if (num_of_ant(tbl_type.ant_type) == 1)
  lq_cmd->single_stream_ant_msk = tbl_type.ant_type;
 else if (num_of_ant(tbl_type.ant_type) == 2)
  lq_cmd->dual_stream_ant_msk = tbl_type.ant_type;


 index++;
 repeat_rate--;
 if (mvm)
  valid_tx_ant = iwl_fw_valid_tx_ant(mvm->fw);


 while (index < LINK_QUAL_MAX_RETRY_NUM) {



  while (repeat_rate > 0 && (index < LINK_QUAL_MAX_RETRY_NUM)) {
   if (is_legacy(tbl_type.lq_type)) {
    if (ant_toggle_cnt < NUM_TRY_BEFORE_ANT_TOGGLE)
     ant_toggle_cnt++;
    else if (mvm &&
      rs_toggle_antenna(valid_tx_ant,
       &new_rate, &tbl_type))
     ant_toggle_cnt = 1;
   }


   rs_dbgfs_set_mcs(lq_sta, &new_rate, index);


   lq_cmd->rs_table[index] =
     cpu_to_le32(new_rate);
   repeat_rate--;
   index++;
  }

  rs_get_tbl_info_from_mcs(new_rate, lq_sta->band, &tbl_type,
      &rate_idx);





  if (is_mimo(tbl_type.lq_type))
   lq_cmd->mimo_delim = index;


  new_rate = rs_get_lower_rate(lq_sta, &tbl_type, rate_idx,
          use_ht_possible);


  if (is_legacy(tbl_type.lq_type)) {
   if (ant_toggle_cnt < NUM_TRY_BEFORE_ANT_TOGGLE)
    ant_toggle_cnt++;
   else if (mvm &&
     rs_toggle_antenna(valid_tx_ant,
         &new_rate, &tbl_type))
    ant_toggle_cnt = 1;

   repeat_rate = IWL_NUMBER_TRY;
  } else {
   repeat_rate = IWL_HT_NUMBER_TRY;
  }



  use_ht_possible = 0;


  rs_dbgfs_set_mcs(lq_sta, &new_rate, index);


  lq_cmd->rs_table[index] = cpu_to_le32(new_rate);

  index++;
  repeat_rate--;
 }

 lq_cmd->agg_frame_cnt_limit = LINK_QUAL_AGG_FRAME_LIMIT_DEF;
 lq_cmd->agg_disable_start_th = LINK_QUAL_AGG_DISABLE_START_DEF;

 lq_cmd->agg_time_limit =
  cpu_to_le16(LINK_QUAL_AGG_TIME_LIMIT_DEF);
}
