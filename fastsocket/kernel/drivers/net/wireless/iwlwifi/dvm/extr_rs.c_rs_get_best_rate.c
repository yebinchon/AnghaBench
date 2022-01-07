
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iwl_scale_tbl_info {int* expected_tpt; int lq_type; TYPE_1__* win; } ;
struct iwl_priv {int dummy; } ;
struct iwl_lq_sta {size_t active_tbl; int last_tpt; struct iwl_scale_tbl_info* lq_info; } ;
typedef size_t s8 ;
typedef int s32 ;
struct TYPE_2__ {int success_ratio; } ;


 int IWL_RATE_DECREASE_TH ;
 int IWL_RATE_HIGH_TH ;
 int IWL_RATE_INVALID ;
 int IWL_RATE_SCALE_SWITCH ;
 int rs_get_adjacent_rate (struct iwl_priv*,size_t,int,int ) ;

__attribute__((used)) static s32 rs_get_best_rate(struct iwl_priv *priv,
       struct iwl_lq_sta *lq_sta,
       struct iwl_scale_tbl_info *tbl,
       u16 rate_mask, s8 index)
{

 struct iwl_scale_tbl_info *active_tbl =
     &(lq_sta->lq_info[lq_sta->active_tbl]);
 s32 active_sr = active_tbl->win[index].success_ratio;
 s32 active_tpt = active_tbl->expected_tpt[index];


 s32 *tpt_tbl = tbl->expected_tpt;

 s32 new_rate, high, low, start_hi;
 u16 high_low;
 s8 rate = index;

 new_rate = high = low = start_hi = IWL_RATE_INVALID;

 for (; ;) {
  high_low = rs_get_adjacent_rate(priv, rate, rate_mask,
      tbl->lq_type);

  low = high_low & 0xff;
  high = (high_low >> 8) & 0xff;
  if ((((100 * tpt_tbl[rate]) > lq_sta->last_tpt) &&
       ((active_sr > IWL_RATE_DECREASE_TH) &&
        (active_sr <= IWL_RATE_HIGH_TH) &&
        (tpt_tbl[rate] <= active_tpt))) ||
      ((active_sr >= IWL_RATE_SCALE_SWITCH) &&
       (tpt_tbl[rate] > active_tpt))) {




   if (start_hi != IWL_RATE_INVALID) {
    new_rate = start_hi;
    break;
   }

   new_rate = rate;


   if (low != IWL_RATE_INVALID)
    rate = low;


   else
    break;


  } else {



   if (new_rate != IWL_RATE_INVALID)
    break;


   else if (high != IWL_RATE_INVALID) {
    start_hi = high;
    rate = high;


   } else {
    new_rate = rate;
    break;
   }
  }
 }

 return new_rate;
}
