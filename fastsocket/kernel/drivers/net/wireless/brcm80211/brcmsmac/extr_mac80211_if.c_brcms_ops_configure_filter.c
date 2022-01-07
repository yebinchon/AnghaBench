
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int lock; TYPE_2__* wlc; } ;
struct bcma_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* hw; } ;
struct TYPE_3__ {struct bcma_device* d11core; } ;


 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_BCN_PRBRESP_PROMISC ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_FCSFAIL ;
 unsigned int FIF_OTHER_BSS ;
 unsigned int FIF_PROMISC_IN_BSS ;
 unsigned int FIF_PSPOLL ;
 unsigned int MAC_FILTERS ;
 int brcms_c_mac_promisc (TYPE_2__*,unsigned int) ;
 int brcms_dbg_info (struct bcma_device*,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
brcms_ops_configure_filter(struct ieee80211_hw *hw,
   unsigned int changed_flags,
   unsigned int *total_flags, u64 multicast)
{
 struct brcms_info *wl = hw->priv;
 struct bcma_device *core = wl->wlc->hw->d11core;

 changed_flags &= MAC_FILTERS;
 *total_flags &= MAC_FILTERS;

 if (changed_flags & FIF_PROMISC_IN_BSS)
  brcms_dbg_info(core, "FIF_PROMISC_IN_BSS\n");
 if (changed_flags & FIF_ALLMULTI)
  brcms_dbg_info(core, "FIF_ALLMULTI\n");
 if (changed_flags & FIF_FCSFAIL)
  brcms_dbg_info(core, "FIF_FCSFAIL\n");
 if (changed_flags & FIF_CONTROL)
  brcms_dbg_info(core, "FIF_CONTROL\n");
 if (changed_flags & FIF_OTHER_BSS)
  brcms_dbg_info(core, "FIF_OTHER_BSS\n");
 if (changed_flags & FIF_PSPOLL)
  brcms_dbg_info(core, "FIF_PSPOLL\n");
 if (changed_flags & FIF_BCN_PRBRESP_PROMISC)
  brcms_dbg_info(core, "FIF_BCN_PRBRESP_PROMISC\n");

 spin_lock_bh(&wl->lock);
 brcms_c_mac_promisc(wl->wlc, *total_flags);
 spin_unlock_bh(&wl->lock);
 return;
}
