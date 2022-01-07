
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int flags; int addr; } ;
typedef int local_info_t ;


 int DEBUG_PS2 ;
 int IEEE80211_FTYPE_CTL ;
 int IEEE80211_STYPE_PSPOLL ;
 int PDEBUG (int ,char*,int ,int,int) ;
 int WLAN_STA_PS ;
 int schedule_packet_send (int *,struct sta_info*) ;

__attribute__((used)) static void hostap_update_sta_ps2(local_info_t *local, struct sta_info *sta,
      int pwrmgt, int type, int stype)
{
 if (pwrmgt && !(sta->flags & WLAN_STA_PS)) {
  sta->flags |= WLAN_STA_PS;
  PDEBUG(DEBUG_PS2, "STA %pM changed to use PS "
         "mode (type=0x%02X, stype=0x%02X)\n",
         sta->addr, type >> 2, stype >> 4);
 } else if (!pwrmgt && (sta->flags & WLAN_STA_PS)) {
  sta->flags &= ~WLAN_STA_PS;
  PDEBUG(DEBUG_PS2, "STA %pM changed to not use "
         "PS mode (type=0x%02X, stype=0x%02X)\n",
         sta->addr, type >> 2, stype >> 4);
  if (type != IEEE80211_FTYPE_CTL ||
      stype != IEEE80211_STYPE_PSPOLL)
   schedule_packet_send(local, sta);
 }
}
