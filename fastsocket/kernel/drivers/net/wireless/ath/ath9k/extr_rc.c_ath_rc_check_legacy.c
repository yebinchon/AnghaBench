
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;


 int WLAN_RC_CAP_MODE (int ) ;
 int WLAN_RC_CAP_STREAM (int ) ;
 scalar_t__ WLAN_RC_PHY_HT (int ) ;

__attribute__((used)) static inline bool ath_rc_check_legacy(u8 rate, u8 dot11rate, u16 rate_flags,
           u32 phy, u32 capflag)
{
 if (rate != dot11rate || WLAN_RC_PHY_HT(phy))
  return 0;

 if ((rate_flags & WLAN_RC_CAP_MODE(capflag)) != WLAN_RC_CAP_MODE(capflag))
  return 0;

 if (!(rate_flags & WLAN_RC_CAP_STREAM(capflag)))
  return 0;

 return 1;
}
