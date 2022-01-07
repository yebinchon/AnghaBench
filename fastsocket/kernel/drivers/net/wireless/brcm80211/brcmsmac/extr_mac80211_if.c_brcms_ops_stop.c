
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int lock; TYPE_2__* wlc; } ;
struct TYPE_4__ {TYPE_1__* hw; } ;
struct TYPE_3__ {int d11core; } ;


 int brcms_c_chipmatch (int ) ;
 int brcms_down (struct brcms_info*) ;
 int brcms_err (int ,char*) ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void brcms_ops_stop(struct ieee80211_hw *hw)
{
 struct brcms_info *wl = hw->priv;
 int status;

 ieee80211_stop_queues(hw);

 if (wl->wlc == ((void*)0))
  return;

 spin_lock_bh(&wl->lock);
 status = brcms_c_chipmatch(wl->wlc->hw->d11core);
 spin_unlock_bh(&wl->lock);
 if (!status) {
  brcms_err(wl->wlc->hw->d11core,
     "wl: brcms_ops_stop: chipmatch failed\n");
  return;
 }


 spin_lock_bh(&wl->lock);
 brcms_down(wl);
 spin_unlock_bh(&wl->lock);
}
