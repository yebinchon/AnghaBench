
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {int flags; int ap; } ;
struct ap_data {int sta_table_lock; TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ ieee_802_1x; } ;


 int WLAN_STA_ASSOC ;
 int WLAN_STA_AUTHORIZED ;
 struct sta_info* ap_get_sta (struct ap_data*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int hostap_is_sta_authorized(struct ap_data *ap, u8 *sta_addr)
{
 struct sta_info *sta;
 int ret = 0;

 spin_lock(&ap->sta_table_lock);
 sta = ap_get_sta(ap, sta_addr);
 if (sta != ((void*)0) && (sta->flags & WLAN_STA_ASSOC) && !sta->ap &&
     ((sta->flags & WLAN_STA_AUTHORIZED) ||
      ap->local->ieee_802_1x == 0))
  ret = 1;
 spin_unlock(&ap->sta_table_lock);

 return ret;
}
