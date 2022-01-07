
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int ack_policy; int tx_complete; int qos; scalar_t__ packet_type; scalar_t__ rate_policy; } ;
struct tx_double_buffer_desc {TYPE_1__ control; } ;
struct ieee80211_tx_info {int flags; } ;


 int IEEE80211_FTYPE_DATA ;
 int IEEE80211_STYPE_QOS_DATA ;
 int IEEE80211_STYPE_QOS_NULLFUNC ;
 int IEEE80211_TX_CTL_NO_ACK ;

__attribute__((used)) static void wl1251_tx_control(struct tx_double_buffer_desc *tx_hdr,
         struct ieee80211_tx_info *control, u16 fc)
{
 *(u16 *)&tx_hdr->control = 0;

 tx_hdr->control.rate_policy = 0;


 tx_hdr->control.packet_type = 0;

 if (control->flags & IEEE80211_TX_CTL_NO_ACK)
  tx_hdr->control.ack_policy = 1;

 tx_hdr->control.tx_complete = 1;

 if ((fc & IEEE80211_FTYPE_DATA) &&
     ((fc & IEEE80211_STYPE_QOS_DATA) ||
      (fc & IEEE80211_STYPE_QOS_NULLFUNC)))
  tx_hdr->control.qos = 1;
}
