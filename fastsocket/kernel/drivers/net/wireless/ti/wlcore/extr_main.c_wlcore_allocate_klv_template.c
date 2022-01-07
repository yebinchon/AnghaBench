
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wl1271 {int klv_templates_map; } ;


 int EBUSY ;
 scalar_t__ WLCORE_MAX_KLV_TEMPLATES ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;

__attribute__((used)) static int wlcore_allocate_klv_template(struct wl1271 *wl, u8 *idx)
{
 u8 policy = find_first_zero_bit(wl->klv_templates_map,
     WLCORE_MAX_KLV_TEMPLATES);
 if (policy >= WLCORE_MAX_KLV_TEMPLATES)
  return -EBUSY;

 __set_bit(policy, wl->klv_templates_map);
 *idx = policy;
 return 0;
}
