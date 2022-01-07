
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sta_info {int flags; int aid; int users; int last_rx; int * supported_rates; void* listen_interval; void* capability; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct net_device {int name; } ;
struct ieee80211_hdr {int addr2; } ;
struct hostap_80211_rx_status {int dummy; } ;
struct TYPE_4__ {int tx_rate_control; int basic_rates; TYPE_3__* ap; int essid; struct net_device* dev; } ;
typedef TYPE_1__ local_info_t ;
typedef unsigned char __le16 ;
struct TYPE_5__ {int tx_callback_assoc; int sta_table_lock; struct sta_info** sta_aid; } ;


 scalar_t__ BIT (int) ;
 int DEBUG_AP ;
 int ETH_ALEN ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_MGMT_HDR_LEN ;
 int IEEE80211_STYPE_ASSOC_RESP ;
 int IEEE80211_STYPE_DEAUTH ;
 int IEEE80211_STYPE_REASSOC_RESP ;
 int MAX_AID_TABLE_SIZE ;
 unsigned int MAX_SSID_LEN ;
 int PDEBUG (int ,char*,int ,int,...) ;
 int PDEBUG2 (int ,char*,...) ;
 scalar_t__ WLAN_CAPABILITY_ESS ;
 unsigned char WLAN_EID_SSID ;
 unsigned char WLAN_EID_SUPP_RATES ;
 int WLAN_RATE_11M ;
 int WLAN_RATE_1M ;
 int WLAN_RATE_2M ;
 int WLAN_RATE_5M5 ;
 scalar_t__ WLAN_REASON_STA_REQ_ASSOC_WITHOUT_AUTH ;
 scalar_t__ WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA ;
 scalar_t__ WLAN_STATUS_ASSOC_DENIED_UNSPEC ;
 scalar_t__ WLAN_STATUS_SUCCESS ;
 scalar_t__ WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int WLAN_STA_AUTH ;
 unsigned int WLAN_SUPP_RATES_MAX ;
 void* __le16_to_cpu (unsigned char) ;
 struct sta_info* ap_get_sta (TYPE_3__*,int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 unsigned char cpu_to_le16 (scalar_t__) ;
 int jiffies ;
 scalar_t__ memcmp (int ,unsigned char*,unsigned int) ;
 int memcpy (int *,unsigned char*,unsigned int) ;
 int memset (int *,int ,int) ;
 int prism2_check_tx_rates (struct sta_info*) ;
 int prism2_send_mgmt (struct net_device*,int,char*,int,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 unsigned int strlen (int ) ;

__attribute__((used)) static void handle_assoc(local_info_t *local, struct sk_buff *skb,
    struct hostap_80211_rx_status *rx_stats, int reassoc)
{
 struct net_device *dev = local->dev;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 char body[12], *p, *lpos;
 int len, left;
 __le16 *pos;
 u16 resp = WLAN_STATUS_SUCCESS;
 struct sta_info *sta = ((void*)0);
 int send_deauth = 0;
 char *txt = "";
 u8 prev_ap[ETH_ALEN];

 left = len = skb->len - IEEE80211_MGMT_HDR_LEN;

 if (len < (reassoc ? 10 : 4)) {
  PDEBUG(DEBUG_AP, "%s: handle_assoc - too short payload "
         "(len=%d, reassoc=%d) from %pM\n",
         dev->name, len, reassoc, hdr->addr2);
  return;
 }

 spin_lock_bh(&local->ap->sta_table_lock);
 sta = ap_get_sta(local->ap, hdr->addr2);
 if (sta == ((void*)0) || (sta->flags & WLAN_STA_AUTH) == 0) {
  spin_unlock_bh(&local->ap->sta_table_lock);
  txt = "trying to associate before authentication";
  send_deauth = 1;
  resp = WLAN_STATUS_UNSPECIFIED_FAILURE;
  sta = ((void*)0);
  goto fail;
 }
 atomic_inc(&sta->users);
 spin_unlock_bh(&local->ap->sta_table_lock);

 pos = (__le16 *) (skb->data + IEEE80211_MGMT_HDR_LEN);
 sta->capability = __le16_to_cpu(*pos);
 pos++; left -= 2;
 sta->listen_interval = __le16_to_cpu(*pos);
 pos++; left -= 2;

 if (reassoc) {
  memcpy(prev_ap, pos, ETH_ALEN);
  pos++; pos++; pos++; left -= 6;
 } else
  memset(prev_ap, 0, ETH_ALEN);

 if (left >= 2) {
  unsigned int ileft;
  unsigned char *u = (unsigned char *) pos;

  if (*u == WLAN_EID_SSID) {
   u++; left--;
   ileft = *u;
   u++; left--;

   if (ileft > left || ileft > MAX_SSID_LEN) {
    txt = "SSID overflow";
    resp = WLAN_STATUS_UNSPECIFIED_FAILURE;
    goto fail;
   }

   if (ileft != strlen(local->essid) ||
       memcmp(local->essid, u, ileft) != 0) {
    txt = "not our SSID";
    resp = WLAN_STATUS_ASSOC_DENIED_UNSPEC;
    goto fail;
   }

   u += ileft;
   left -= ileft;
  }

  if (left >= 2 && *u == WLAN_EID_SUPP_RATES) {
   u++; left--;
   ileft = *u;
   u++; left--;

   if (ileft > left || ileft == 0 ||
       ileft > WLAN_SUPP_RATES_MAX) {
    txt = "SUPP_RATES len error";
    resp = WLAN_STATUS_UNSPECIFIED_FAILURE;
    goto fail;
   }

   memset(sta->supported_rates, 0,
          sizeof(sta->supported_rates));
   memcpy(sta->supported_rates, u, ileft);
   prism2_check_tx_rates(sta);

   u += ileft;
   left -= ileft;
  }

  if (left > 0) {
   PDEBUG(DEBUG_AP, "%s: assoc from %pM"
          " with extra data (%d bytes) [",
          dev->name, hdr->addr2, left);
   while (left > 0) {
    PDEBUG2(DEBUG_AP, "<%02x>", *u);
    u++; left--;
   }
   PDEBUG2(DEBUG_AP, "]\n");
  }
 } else {
  txt = "frame underflow";
  resp = WLAN_STATUS_UNSPECIFIED_FAILURE;
  goto fail;
 }


 if (sta->aid > 0)
  txt = "OK, old AID";
 else {
  spin_lock_bh(&local->ap->sta_table_lock);
  for (sta->aid = 1; sta->aid <= MAX_AID_TABLE_SIZE; sta->aid++)
   if (local->ap->sta_aid[sta->aid - 1] == ((void*)0))
    break;
  if (sta->aid > MAX_AID_TABLE_SIZE) {
   sta->aid = 0;
   spin_unlock_bh(&local->ap->sta_table_lock);
   resp = WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA;
   txt = "no room for more AIDs";
  } else {
   local->ap->sta_aid[sta->aid - 1] = sta;
   spin_unlock_bh(&local->ap->sta_table_lock);
   txt = "OK, new AID";
  }
 }

 fail:
 pos = (__le16 *) body;

 if (send_deauth) {
  *pos = cpu_to_le16(WLAN_REASON_STA_REQ_ASSOC_WITHOUT_AUTH);
  pos++;
 } else {




  *pos = cpu_to_le16(WLAN_CAPABILITY_ESS);
  pos++;


  *pos = cpu_to_le16(resp);
  pos++;

  *pos = cpu_to_le16((sta && sta->aid > 0 ? sta->aid : 0) |
         BIT(14) | BIT(15));
  pos++;


  p = (char *) pos;
  *p++ = WLAN_EID_SUPP_RATES;
  lpos = p;
  *p++ = 0;
  if (local->tx_rate_control & WLAN_RATE_1M) {
   *p++ = local->basic_rates & WLAN_RATE_1M ? 0x82 : 0x02;
   (*lpos)++;
  }
  if (local->tx_rate_control & WLAN_RATE_2M) {
   *p++ = local->basic_rates & WLAN_RATE_2M ? 0x84 : 0x04;
   (*lpos)++;
  }
  if (local->tx_rate_control & WLAN_RATE_5M5) {
   *p++ = local->basic_rates & WLAN_RATE_5M5 ?
    0x8b : 0x0b;
   (*lpos)++;
  }
  if (local->tx_rate_control & WLAN_RATE_11M) {
   *p++ = local->basic_rates & WLAN_RATE_11M ?
    0x96 : 0x16;
   (*lpos)++;
  }
  pos = (__le16 *) p;
 }

 prism2_send_mgmt(dev, IEEE80211_FTYPE_MGMT |
    (send_deauth ? IEEE80211_STYPE_DEAUTH :
     (reassoc ? IEEE80211_STYPE_REASSOC_RESP :
      IEEE80211_STYPE_ASSOC_RESP)),
    body, (u8 *) pos - (u8 *) body,
    hdr->addr2,
    send_deauth ? 0 : local->ap->tx_callback_assoc);

 if (sta) {
  if (resp == WLAN_STATUS_SUCCESS) {
   sta->last_rx = jiffies;


  }
  atomic_dec(&sta->users);
 }
}
