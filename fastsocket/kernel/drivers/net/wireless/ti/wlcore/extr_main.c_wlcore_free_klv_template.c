
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wl1271 {int klv_templates_map; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ WLCORE_MAX_KLV_TEMPLATES ;
 int __clear_bit (scalar_t__,int ) ;

__attribute__((used)) static void wlcore_free_klv_template(struct wl1271 *wl, u8 *idx)
{
 if (WARN_ON(*idx >= WLCORE_MAX_KLV_TEMPLATES))
  return;

 __clear_bit(*idx, wl->klv_templates_map);
 *idx = WLCORE_MAX_KLV_TEMPLATES;
}
