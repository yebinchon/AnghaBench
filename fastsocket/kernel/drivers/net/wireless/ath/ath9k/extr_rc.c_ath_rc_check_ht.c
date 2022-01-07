
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;


 int WLAN_RC_CAP_STREAM (int ) ;
 int WLAN_RC_PHY_HT (int ) ;
 int WLAN_RC_PHY_HT_VALID (int,int ) ;

__attribute__((used)) static inline bool ath_rc_check_ht(u8 rate, u8 dot11rate, u16 rate_flags,
       u32 phy, u32 capflag)
{
 if (rate != dot11rate || !WLAN_RC_PHY_HT(phy))
  return 0;

 if (!WLAN_RC_PHY_HT_VALID(rate_flags, capflag))
  return 0;

 if (!(rate_flags & WLAN_RC_CAP_STREAM(capflag)))
  return 0;

 return 1;
}
