
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int stay_in_tbl; scalar_t__ action_counter; int flush_timer; scalar_t__ total_success; scalar_t__ total_failed; scalar_t__ table_count; int max_success_limit; int max_failure_limit; int table_count_limit; } ;


 int IWL_DEBUG_RATE (struct iwl_mvm*,char*) ;
 int IWL_LEGACY_FAILURE_LIMIT ;
 int IWL_LEGACY_SUCCESS_LIMIT ;
 int IWL_LEGACY_TABLE_COUNT ;
 int IWL_NONE_LEGACY_FAILURE_LIMIT ;
 int IWL_NONE_LEGACY_SUCCESS_LIMIT ;
 int IWL_NONE_LEGACY_TABLE_COUNT ;
 int jiffies ;

__attribute__((used)) static void rs_set_stay_in_table(struct iwl_mvm *mvm, u8 is_legacy,
     struct iwl_lq_sta *lq_sta)
{
 IWL_DEBUG_RATE(mvm, "we are staying in the same table\n");
 lq_sta->stay_in_tbl = 1;
 if (is_legacy) {
  lq_sta->table_count_limit = IWL_LEGACY_TABLE_COUNT;
  lq_sta->max_failure_limit = IWL_LEGACY_FAILURE_LIMIT;
  lq_sta->max_success_limit = IWL_LEGACY_SUCCESS_LIMIT;
 } else {
  lq_sta->table_count_limit = IWL_NONE_LEGACY_TABLE_COUNT;
  lq_sta->max_failure_limit = IWL_NONE_LEGACY_FAILURE_LIMIT;
  lq_sta->max_success_limit = IWL_NONE_LEGACY_SUCCESS_LIMIT;
 }
 lq_sta->table_count = 0;
 lq_sta->total_failed = 0;
 lq_sta->total_success = 0;
 lq_sta->flush_timer = jiffies;
 lq_sta->action_counter = 0;
}
