
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int flags; TYPE_1__* local; int ap; int list; } ;
struct prism2_hostapd_param {int sta_addr; } ;
struct ap_data {int sta_table_lock; } ;
struct TYPE_2__ {int dev; } ;


 int ENOENT ;
 int WLAN_STA_ASSOC ;
 int ap_free_sta (struct ap_data*,struct sta_info*) ;
 struct sta_info* ap_get_sta (struct ap_data*,int ) ;
 int ap_sta_hash_del (struct ap_data*,struct sta_info*) ;
 int hostap_event_expired_sta (int ,struct sta_info*) ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int prism2_hostapd_remove_sta(struct ap_data *ap,
         struct prism2_hostapd_param *param)
{
 struct sta_info *sta;

 spin_lock_bh(&ap->sta_table_lock);
 sta = ap_get_sta(ap, param->sta_addr);
 if (sta) {
  ap_sta_hash_del(ap, sta);
  list_del(&sta->list);
 }
 spin_unlock_bh(&ap->sta_table_lock);

 if (!sta)
  return -ENOENT;

 if ((sta->flags & WLAN_STA_ASSOC) && !sta->ap && sta->local)
  hostap_event_expired_sta(sta->local->dev, sta);
 ap_free_sta(ap, sta);

 return 0;
}
