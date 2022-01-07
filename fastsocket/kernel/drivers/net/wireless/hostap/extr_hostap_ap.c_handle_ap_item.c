
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dev_addr; } ;
struct ieee80211_hdr {int addr1; int addr3; int frame_control; } ;
struct hostap_80211_rx_status {int dummy; } ;
struct TYPE_13__ {scalar_t__ hostapd; TYPE_1__* ap; struct net_device* dev; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_12__ {scalar_t__ nullfunc_ack; } ;


 int DEBUG_AP ;
 int ETH_ALEN ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_FTYPE ;
 int IEEE80211_FCTL_STYPE ;
 int IEEE80211_FCTL_TODS ;
 int IEEE80211_FTYPE_CTL ;
 int IEEE80211_FTYPE_DATA ;
 int IEEE80211_FTYPE_MGMT ;




 int IEEE80211_STYPE_BEACON ;


 int IEEE80211_STYPE_NULLFUNC ;
 int IEEE80211_STYPE_PSPOLL ;


 int PDEBUG (int ,char*,...) ;
 int ap_handle_data_nullfunc (TYPE_2__*,struct ieee80211_hdr*) ;
 int ap_handle_dropped_data (TYPE_2__*,struct ieee80211_hdr*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int handle_assoc (TYPE_2__*,struct sk_buff*,struct hostap_80211_rx_status*,int) ;
 int handle_authen (TYPE_2__*,struct sk_buff*,struct hostap_80211_rx_status*) ;
 int handle_beacon (TYPE_2__*,struct sk_buff*,struct hostap_80211_rx_status*) ;
 int handle_deauth (TYPE_2__*,struct sk_buff*,struct hostap_80211_rx_status*) ;
 int handle_disassoc (TYPE_2__*,struct sk_buff*,struct hostap_80211_rx_status*) ;
 int handle_pspoll (TYPE_2__*,struct ieee80211_hdr*,struct hostap_80211_rx_status*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int,int ,int ) ;

__attribute__((used)) static void handle_ap_item(local_info_t *local, struct sk_buff *skb,
      struct hostap_80211_rx_status *rx_stats)
{

 struct net_device *dev = local->dev;

 u16 fc, type, stype;
 struct ieee80211_hdr *hdr;



 hdr = (struct ieee80211_hdr *) skb->data;
 fc = le16_to_cpu(hdr->frame_control);
 type = fc & IEEE80211_FCTL_FTYPE;
 stype = fc & IEEE80211_FCTL_STYPE;


 if (!local->hostapd && type == IEEE80211_FTYPE_DATA) {
  PDEBUG(DEBUG_AP, "handle_ap_item - data frame\n");

  if (!(fc & IEEE80211_FCTL_TODS) ||
      (fc & IEEE80211_FCTL_FROMDS)) {
   if (stype == IEEE80211_STYPE_NULLFUNC) {



    ap_handle_dropped_data(local, hdr);
    goto done;
   }
   PDEBUG(DEBUG_AP, "   not ToDS frame (fc=0x%04x)\n",
          fc);
   goto done;
  }

  if (memcmp(hdr->addr1, dev->dev_addr, ETH_ALEN)) {
   PDEBUG(DEBUG_AP, "handle_ap_item - addr1(BSSID)=%pM"
          " not own MAC\n", hdr->addr1);
   goto done;
  }

  if (local->ap->nullfunc_ack &&
      stype == IEEE80211_STYPE_NULLFUNC)
   ap_handle_data_nullfunc(local, hdr);
  else
   ap_handle_dropped_data(local, hdr);
  goto done;
 }

 if (type == IEEE80211_FTYPE_MGMT && stype == IEEE80211_STYPE_BEACON) {
  handle_beacon(local, skb, rx_stats);
  goto done;
 }


 if (type == IEEE80211_FTYPE_CTL && stype == IEEE80211_STYPE_PSPOLL) {
  handle_pspoll(local, hdr, rx_stats);
  goto done;
 }

 if (local->hostapd) {
  PDEBUG(DEBUG_AP, "Unknown frame in AP queue: type=0x%02x "
         "subtype=0x%02x\n", type, stype);
  goto done;
 }


 if (type != IEEE80211_FTYPE_MGMT) {
  PDEBUG(DEBUG_AP, "handle_ap_item - not a management frame?\n");
  goto done;
 }

 if (memcmp(hdr->addr1, dev->dev_addr, ETH_ALEN)) {
  PDEBUG(DEBUG_AP, "handle_ap_item - addr1(DA)=%pM"
         " not own MAC\n", hdr->addr1);
  goto done;
 }

 if (memcmp(hdr->addr3, dev->dev_addr, ETH_ALEN)) {
  PDEBUG(DEBUG_AP, "handle_ap_item - addr3(BSSID)=%pM"
         " not own MAC\n", hdr->addr3);
  goto done;
 }

 switch (stype) {
 case 135:
  handle_assoc(local, skb, rx_stats, 0);
  break;
 case 134:
  PDEBUG(DEBUG_AP, "==> ASSOC RESP (ignored)\n");
  break;
 case 129:
  handle_assoc(local, skb, rx_stats, 1);
  break;
 case 128:
  PDEBUG(DEBUG_AP, "==> REASSOC RESP (ignored)\n");
  break;
 case 133:
  PDEBUG(DEBUG_AP, "==> ATIM (ignored)\n");
  break;
 case 130:
  handle_disassoc(local, skb, rx_stats);
  break;
 case 132:
  handle_authen(local, skb, rx_stats);
  break;
 case 131:
  handle_deauth(local, skb, rx_stats);
  break;
 default:
  PDEBUG(DEBUG_AP, "Unknown mgmt frame subtype 0x%02x\n",
         stype >> 4);
  break;
 }


 done:
 dev_kfree_skb(skb);
}
