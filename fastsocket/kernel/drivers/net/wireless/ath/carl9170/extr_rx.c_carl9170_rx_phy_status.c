
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_status {scalar_t__ signal; int antenna; } ;
struct ar9170_rx_phystatus {int* rssi; scalar_t__ rssi_combined; } ;
struct ar9170 {scalar_t__* noise; } ;


 int BIT (int) ;
 int BUILD_BUG_ON (int) ;

__attribute__((used)) static void carl9170_rx_phy_status(struct ar9170 *ar,
 struct ar9170_rx_phystatus *phy, struct ieee80211_rx_status *status)
{
 int i;

 BUILD_BUG_ON(sizeof(struct ar9170_rx_phystatus) != 20);

 for (i = 0; i < 3; i++)
  if (phy->rssi[i] != 0x80)
   status->antenna |= BIT(i);


 for (i = 0; i < 7; i++)
  if (phy->rssi[i] & 0x80)
   phy->rssi[i] = ((phy->rssi[i] & 0x7f) + 1) & 0x7f;


 status->signal = ar->noise[0] + phy->rssi_combined;
}
