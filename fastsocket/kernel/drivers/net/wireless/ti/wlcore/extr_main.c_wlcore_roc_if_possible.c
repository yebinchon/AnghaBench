
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {scalar_t__ role_id; int channel; int band; } ;
struct wl1271 {int roc_map; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ WL12XX_INVALID_ROLE_ID ;
 scalar_t__ WL12XX_MAX_ROLES ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;
 int wl12xx_roc (struct wl1271*,struct wl12xx_vif*,scalar_t__,int ,int ) ;

__attribute__((used)) static void wlcore_roc_if_possible(struct wl1271 *wl,
       struct wl12xx_vif *wlvif)
{
 if (find_first_bit(wl->roc_map,
      WL12XX_MAX_ROLES) < WL12XX_MAX_ROLES)
  return;

 if (WARN_ON(wlvif->role_id == WL12XX_INVALID_ROLE_ID))
  return;

 wl12xx_roc(wl, wlvif, wlvif->role_id, wlvif->band, wlvif->channel);
}
