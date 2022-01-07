
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_info {int lock; TYPE_2__* pub; int wlc; } ;
struct TYPE_4__ {TYPE_1__* ieee_hw; } ;
struct TYPE_3__ {int wiphy; } ;


 int brcms_c_check_radio_disabled (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;
 int wiphy_rfkill_start_polling (int ) ;

bool brcms_rfkill_set_hw_state(struct brcms_info *wl)
{
 bool blocked = brcms_c_check_radio_disabled(wl->wlc);

 spin_unlock_bh(&wl->lock);
 wiphy_rfkill_set_hw_state(wl->pub->ieee_hw->wiphy, blocked);
 if (blocked)
  wiphy_rfkill_start_polling(wl->pub->ieee_hw->wiphy);
 spin_lock_bh(&wl->lock);
 return blocked;
}
