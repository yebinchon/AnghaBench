
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {scalar_t__ dev_hlid; } ;


 scalar_t__ WL12XX_INVALID_LINK_ID ;

__attribute__((used)) static bool wl12xx_dev_role_started(struct wl12xx_vif *wlvif)
{
 return wlvif->dev_hlid != WL12XX_INVALID_LINK_ID;
}
