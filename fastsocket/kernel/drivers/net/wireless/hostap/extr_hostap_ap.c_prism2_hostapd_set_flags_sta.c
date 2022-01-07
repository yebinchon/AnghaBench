
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int flags; } ;
struct TYPE_4__ {int flags_and; int flags_or; } ;
struct TYPE_3__ {TYPE_2__ set_flags_sta; } ;
struct prism2_hostapd_param {TYPE_1__ u; int sta_addr; } ;
struct ap_data {int sta_table_lock; } ;


 int ENOENT ;
 struct sta_info* ap_get_sta (struct ap_data*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int prism2_hostapd_set_flags_sta(struct ap_data *ap,
     struct prism2_hostapd_param *param)
{
 struct sta_info *sta;

 spin_lock_bh(&ap->sta_table_lock);
 sta = ap_get_sta(ap, param->sta_addr);
 if (sta) {
  sta->flags |= param->u.set_flags_sta.flags_or;
  sta->flags &= param->u.set_flags_sta.flags_and;
 }
 spin_unlock_bh(&ap->sta_table_lock);

 if (!sta)
  return -ENOENT;

 return 0;
}
