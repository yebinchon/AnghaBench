
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_tim_ie {int dtim_count; int bitmap_ctrl; } ;
struct ieee80211_hdr {int addr3; int frame_control; } ;
struct TYPE_8__ {int dtim_counter; int off_override; int last_beacon; } ;
struct TYPE_7__ {int curaid; int curbssid; } ;
struct ar9170 {TYPE_4__ ps; TYPE_3__ common; TYPE_2__* hw; } ;
struct TYPE_5__ {int flags; int ps_dtim_period; } ;
struct TYPE_6__ {TYPE_1__ conf; } ;


 int FCS_LEN ;
 int IEEE80211_CONF_PS ;
 int PS_OFF_BCN ;
 int WARN_ON_ONCE (int) ;
 int WLAN_EID_TIM ;
 int* carl9170_find_ie (void*,unsigned int,int ) ;
 int carl9170_ps_check (struct ar9170*) ;
 int ether_addr_equal (int ,int ) ;
 int ieee80211_check_tim (struct ieee80211_tim_ie*,int,int ) ;
 int ieee80211_is_beacon (int ) ;
 int jiffies ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void carl9170_ps_beacon(struct ar9170 *ar, void *data, unsigned int len)
{
 struct ieee80211_hdr *hdr = data;
 struct ieee80211_tim_ie *tim_ie;
 u8 *tim;
 u8 tim_len;
 bool cam;

 if (likely(!(ar->hw->conf.flags & IEEE80211_CONF_PS)))
  return;


 if (!ieee80211_is_beacon(hdr->frame_control))
  return;


 if (len <= 40 + FCS_LEN)
  return;


 if (!ether_addr_equal(hdr->addr3, ar->common.curbssid) ||
     !ar->common.curaid)
  return;

 ar->ps.last_beacon = jiffies;

 tim = carl9170_find_ie(data, len - FCS_LEN, WLAN_EID_TIM);
 if (!tim)
  return;

 if (tim[1] < sizeof(*tim_ie))
  return;

 tim_len = tim[1];
 tim_ie = (struct ieee80211_tim_ie *) &tim[2];

 if (!WARN_ON_ONCE(!ar->hw->conf.ps_dtim_period))
  ar->ps.dtim_counter = (tim_ie->dtim_count - 1) %
   ar->hw->conf.ps_dtim_period;




 cam = ieee80211_check_tim(tim_ie, tim_len, ar->common.curaid);


 cam |= !!(tim_ie->bitmap_ctrl & 0x01);

 if (!cam) {

  ar->ps.off_override &= ~PS_OFF_BCN;
  carl9170_ps_check(ar);
 } else {

  ar->ps.off_override |= PS_OFF_BCN;
 }
}
