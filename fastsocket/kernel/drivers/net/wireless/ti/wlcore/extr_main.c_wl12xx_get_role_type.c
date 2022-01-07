
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int bss_type; int p2p; } ;
struct wl1271 {int dummy; } ;





 int WL1271_ROLE_AP ;
 int WL1271_ROLE_IBSS ;
 int WL1271_ROLE_P2P_CL ;
 int WL1271_ROLE_P2P_GO ;
 int WL1271_ROLE_STA ;
 int WL12XX_INVALID_ROLE_TYPE ;
 int wl1271_error (char*,int) ;

__attribute__((used)) static u8 wl12xx_get_role_type(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 switch (wlvif->bss_type) {
 case 130:
  if (wlvif->p2p)
   return WL1271_ROLE_P2P_GO;
  else
   return WL1271_ROLE_AP;

 case 128:
  if (wlvif->p2p)
   return WL1271_ROLE_P2P_CL;
  else
   return WL1271_ROLE_STA;

 case 129:
  return WL1271_ROLE_IBSS;

 default:
  wl1271_error("invalid bss_type: %d", wlvif->bss_type);
 }
 return WL12XX_INVALID_ROLE_TYPE;
}
