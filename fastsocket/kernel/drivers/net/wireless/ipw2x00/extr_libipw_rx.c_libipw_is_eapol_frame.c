
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int* data; } ;
struct net_device {int dev_addr; } ;
struct libipw_hdr_3addr {int addr1; int addr3; int frame_ctl; } ;
struct libipw_device {struct net_device* dev; } ;


 int ETH_P_PAE ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int libipw_is_eapol_frame(struct libipw_device *ieee,
        struct sk_buff *skb)
{
 struct net_device *dev = ieee->dev;
 u16 fc, ethertype;
 struct libipw_hdr_3addr *hdr;
 u8 *pos;

 if (skb->len < 24)
  return 0;

 hdr = (struct libipw_hdr_3addr *)skb->data;
 fc = le16_to_cpu(hdr->frame_ctl);


 if ((fc & (IEEE80211_FCTL_TODS | IEEE80211_FCTL_FROMDS)) ==
     IEEE80211_FCTL_TODS &&
     ether_addr_equal(hdr->addr1, dev->dev_addr) &&
     ether_addr_equal(hdr->addr3, dev->dev_addr)) {

 } else if ((fc & (IEEE80211_FCTL_TODS | IEEE80211_FCTL_FROMDS)) ==
     IEEE80211_FCTL_FROMDS &&
     ether_addr_equal(hdr->addr1, dev->dev_addr)) {

 } else
  return 0;

 if (skb->len < 24 + 8)
  return 0;


 pos = skb->data + 24;
 ethertype = (pos[6] << 8) | pos[7];
 if (ethertype == ETH_P_PAE)
  return 1;

 return 0;
}
