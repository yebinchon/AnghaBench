
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BUG_ON (int) ;
 int IEEE80211_AC_BE ;
 int IEEE80211_AC_BK ;
 int IEEE80211_AC_VI ;
 int IEEE80211_AC_VO ;

__attribute__((used)) static int mwl8k_tid_queue_mapping(u8 tid)
{
 BUG_ON(tid > 7);

 switch (tid) {
 case 0:
 case 3:
  return IEEE80211_AC_BE;
  break;
 case 1:
 case 2:
  return IEEE80211_AC_BK;
  break;
 case 4:
 case 5:
  return IEEE80211_AC_VI;
  break;
 case 6:
 case 7:
  return IEEE80211_AC_VO;
  break;
 default:
  return -1;
  break;
 }
}
