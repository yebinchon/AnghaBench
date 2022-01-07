
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int flags; int ap; } ;
struct ap_data {int sta_table_lock; } ;


 int WLAN_STA_ASSOC ;
 struct sta_info* ap_get_sta (struct ap_data*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int hostap_is_sta_assoc(struct ap_data *ap, u8 *sta_addr)
{
 struct sta_info *sta;
 int ret = 0;

 spin_lock(&ap->sta_table_lock);
 sta = ap_get_sta(ap, sta_addr);
 if (sta != ((void*)0) && (sta->flags & WLAN_STA_ASSOC) && !sta->ap)
  ret = 1;
 spin_unlock(&ap->sta_table_lock);

 return ret;
}
