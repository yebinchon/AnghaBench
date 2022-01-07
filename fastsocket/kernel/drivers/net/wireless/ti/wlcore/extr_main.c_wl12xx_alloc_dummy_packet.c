
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271_tx_hw_descr {int dummy; } ;
struct wl1271 {int dummy; } ;
struct sk_buff {int priority; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_hdr_3addr {int frame_control; } ;


 int IEEE80211_FCTL_TODS ;
 int IEEE80211_FTYPE_DATA ;
 struct ieee80211_hdr_3addr* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_STYPE_NULLFUNC ;
 int TOTAL_TX_DUMMY_PACKET_SIZE ;
 int WL1271_TID_MGMT ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int memset (struct ieee80211_hdr_3addr*,int ,int) ;
 struct ieee80211_hdr_3addr* skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 int wl1271_warning (char*) ;

__attribute__((used)) static struct sk_buff *wl12xx_alloc_dummy_packet(struct wl1271 *wl)
{
 struct sk_buff *skb;
 struct ieee80211_hdr_3addr *hdr;
 unsigned int dummy_packet_size;

 dummy_packet_size = TOTAL_TX_DUMMY_PACKET_SIZE -
       sizeof(struct wl1271_tx_hw_descr) - sizeof(*hdr);

 skb = dev_alloc_skb(TOTAL_TX_DUMMY_PACKET_SIZE);
 if (!skb) {
  wl1271_warning("Failed to allocate a dummy packet skb");
  return ((void*)0);
 }

 skb_reserve(skb, sizeof(struct wl1271_tx_hw_descr));

 hdr = (struct ieee80211_hdr_3addr *) skb_put(skb, sizeof(*hdr));
 memset(hdr, 0, sizeof(*hdr));
 hdr->frame_control = cpu_to_le16(IEEE80211_FTYPE_DATA |
      IEEE80211_STYPE_NULLFUNC |
      IEEE80211_FCTL_TODS);

 memset(skb_put(skb, dummy_packet_size), 0, dummy_packet_size);


 skb->priority = WL1271_TID_MGMT;


 skb_set_queue_mapping(skb, 0);
 memset(IEEE80211_SKB_CB(skb), 0, sizeof(struct ieee80211_tx_info));

 return skb;
}
