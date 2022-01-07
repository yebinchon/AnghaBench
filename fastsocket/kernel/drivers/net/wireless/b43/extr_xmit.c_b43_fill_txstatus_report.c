
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_5__ status; } ;
struct b43_wldev {TYPE_3__* wl; } ;
struct b43_txstatus {int frame_count; scalar_t__ rts_count; scalar_t__ acked; } ;
struct TYPE_9__ {int count; int idx; } ;
struct TYPE_8__ {TYPE_2__* hw; } ;
struct TYPE_6__ {scalar_t__ short_frame_max_tx_count; } ;
struct TYPE_7__ {TYPE_1__ conf; } ;


 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_STAT_ACK ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;

bool b43_fill_txstatus_report(struct b43_wldev *dev,
         struct ieee80211_tx_info *report,
         const struct b43_txstatus *status)
{
 bool frame_success = 1;
 int retry_limit;




 retry_limit = report->status.rates[0].count;
 ieee80211_tx_info_clear_status(report);

 if (status->acked) {

  report->flags |= IEEE80211_TX_STAT_ACK;
 } else {

  if (!(report->flags & IEEE80211_TX_CTL_NO_ACK)) {

   frame_success = 0;
  }
 }
 if (status->frame_count == 0) {

  report->status.rates[0].count = 0;
 } else if (status->rts_count > dev->wl->hw->conf.short_frame_max_tx_count) {







  report->status.rates[0].count = 0;
  report->status.rates[1].count = status->frame_count;
 } else {
  if (status->frame_count > retry_limit) {
   report->status.rates[0].count = retry_limit;
   report->status.rates[1].count = status->frame_count -
     retry_limit;

  } else {
   report->status.rates[0].count = status->frame_count;
   report->status.rates[1].idx = -1;
  }
 }

 return frame_success;
}
