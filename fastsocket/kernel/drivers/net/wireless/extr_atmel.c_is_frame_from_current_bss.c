
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hdr {int addr2; int addr3; int frame_control; } ;
struct atmel_private {int CurrentBSSID; } ;


 int IEEE80211_FCTL_FROMDS ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static int is_frame_from_current_bss(struct atmel_private *priv,
         struct ieee80211_hdr *header)
{
 if (le16_to_cpu(header->frame_control) & IEEE80211_FCTL_FROMDS)
  return memcmp(header->addr3, priv->CurrentBSSID, 6) == 0;
 else
  return memcmp(header->addr2, priv->CurrentBSSID, 6) == 0;
}
