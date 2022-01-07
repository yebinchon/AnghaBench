
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scale_tbl_info {int * win; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int active_tbl; scalar_t__ table_count; scalar_t__ table_count_limit; scalar_t__ stay_in_tbl; scalar_t__ flush_timer; int total_success; int total_failed; int search_better_tbl; int max_success_limit; int max_failure_limit; struct iwl_scale_tbl_info* lq_info; struct iwl_mvm* drv; } ;


 int IWL_DEBUG_RATE (struct iwl_mvm*,char*,...) ;
 int IWL_RATE_COUNT ;
 scalar_t__ IWL_RATE_SCALE_FLUSH_INTVL ;
 int jiffies ;
 int rs_rate_scale_clear_window (int *) ;
 int time_after (int ,unsigned long) ;

__attribute__((used)) static void rs_stay_in_table(struct iwl_lq_sta *lq_sta, bool force_search)
{
 struct iwl_scale_tbl_info *tbl;
 int i;
 int active_tbl;
 int flush_interval_passed = 0;
 struct iwl_mvm *mvm;

 mvm = lq_sta->drv;
 active_tbl = lq_sta->active_tbl;

 tbl = &(lq_sta->lq_info[active_tbl]);


 if (lq_sta->stay_in_tbl) {

  if (lq_sta->flush_timer)
   flush_interval_passed =
    time_after(jiffies,
        (unsigned long)(lq_sta->flush_timer +
      IWL_RATE_SCALE_FLUSH_INTVL));
  if (force_search ||
      (lq_sta->total_failed > lq_sta->max_failure_limit) ||
      (lq_sta->total_success > lq_sta->max_success_limit) ||
      ((!lq_sta->search_better_tbl) &&
       (lq_sta->flush_timer) && (flush_interval_passed))) {
   IWL_DEBUG_RATE(mvm,
           "LQ: stay is expired %d %d %d\n",
         lq_sta->total_failed,
         lq_sta->total_success,
         flush_interval_passed);


   lq_sta->stay_in_tbl = 0;
   lq_sta->total_failed = 0;
   lq_sta->total_success = 0;
   lq_sta->flush_timer = 0;






  } else {
   lq_sta->table_count++;
   if (lq_sta->table_count >=
       lq_sta->table_count_limit) {
    lq_sta->table_count = 0;

    IWL_DEBUG_RATE(mvm,
            "LQ: stay in table clear win\n");
    for (i = 0; i < IWL_RATE_COUNT; i++)
     rs_rate_scale_clear_window(
      &(tbl->win[i]));
   }
  }




  if (!lq_sta->stay_in_tbl) {
   for (i = 0; i < IWL_RATE_COUNT; i++)
    rs_rate_scale_clear_window(&(tbl->win[i]));
  }
 }
}
