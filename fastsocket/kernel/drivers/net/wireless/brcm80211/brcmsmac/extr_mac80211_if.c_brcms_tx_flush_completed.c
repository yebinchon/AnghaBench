
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_info {int lock; int wlc; } ;


 int brcms_c_tx_flush_completed (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool brcms_tx_flush_completed(struct brcms_info *wl)
{
 bool result;

 spin_lock_bh(&wl->lock);
 result = brcms_c_tx_flush_completed(wl->wlc);
 spin_unlock_bh(&wl->lock);
 return result;
}
