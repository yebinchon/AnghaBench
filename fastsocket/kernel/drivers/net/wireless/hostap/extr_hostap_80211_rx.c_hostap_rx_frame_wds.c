
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct ieee80211_hdr {int* addr1; int* addr2; } ;
struct TYPE_8__ {scalar_t__ iw_mode; int wds_type; TYPE_6__* ap; TYPE_1__* dev; int bssid; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_9__ {scalar_t__ autom_ap_wds; } ;
struct TYPE_7__ {int name; int dev_addr; } ;


 int DEBUG_EXTRA ;
 int DEBUG_EXTRA2 ;
 int ETH_ALEN ;
 int HOSTAP_WDS_AP_CLIENT ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;
 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ IW_MODE_MASTER ;
 int PDEBUG (int ,char*,int ,...) ;
 int WDS_ADD ;
 scalar_t__ hostap_is_sta_assoc (TYPE_6__*,int*) ;
 int hostap_wds_link_oper (TYPE_2__*,int*,int ) ;
 scalar_t__ memcmp (int*,int ,int ) ;
 struct net_device* prism2_rx_get_wds (TYPE_2__*,int*) ;

__attribute__((used)) static int
hostap_rx_frame_wds(local_info_t *local, struct ieee80211_hdr *hdr, u16 fc,
      struct net_device **wds)
{


 if ((fc & (IEEE80211_FCTL_TODS | IEEE80211_FCTL_FROMDS)) !=
     (IEEE80211_FCTL_TODS | IEEE80211_FCTL_FROMDS) &&
     (local->iw_mode != IW_MODE_MASTER || !(fc & IEEE80211_FCTL_TODS)))
  return 0;



 if (memcmp(hdr->addr1, local->dev->dev_addr, ETH_ALEN) != 0 &&
     (hdr->addr1[0] != 0xff || hdr->addr1[1] != 0xff ||
      hdr->addr1[2] != 0xff || hdr->addr1[3] != 0xff ||
      hdr->addr1[4] != 0xff || hdr->addr1[5] != 0xff)) {

  PDEBUG(DEBUG_EXTRA2, "%s: received WDS frame with "
         "not own or broadcast %s=%pM\n",
         local->dev->name,
         fc & IEEE80211_FCTL_FROMDS ? "RA" : "BSSID",
         hdr->addr1);
  return -1;
 }


 *wds = prism2_rx_get_wds(local, hdr->addr2);
 if (*wds == ((void*)0) && fc & IEEE80211_FCTL_FROMDS &&
     (local->iw_mode != IW_MODE_INFRA ||
      !(local->wds_type & HOSTAP_WDS_AP_CLIENT) ||
      memcmp(hdr->addr2, local->bssid, ETH_ALEN) != 0)) {


  PDEBUG(DEBUG_EXTRA, "%s: received WDS[4 addr] frame "
         "from unknown TA=%pM\n",
         local->dev->name, hdr->addr2);
  if (local->ap && local->ap->autom_ap_wds)
   hostap_wds_link_oper(local, hdr->addr2, WDS_ADD);
  return -1;
 }

 if (*wds && !(fc & IEEE80211_FCTL_FROMDS) && local->ap &&
     hostap_is_sta_assoc(local->ap, hdr->addr2)) {





  *wds = ((void*)0);
 }

 return 0;
}
