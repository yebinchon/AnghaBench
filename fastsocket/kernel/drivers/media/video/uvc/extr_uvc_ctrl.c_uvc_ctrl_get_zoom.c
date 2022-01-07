
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_control_mapping {int dummy; } ;
typedef int __u8 ;
typedef int __s8 ;
typedef int const __s32 ;
__attribute__((used)) static __s32 uvc_ctrl_get_zoom(struct uvc_control_mapping *mapping,
 __u8 query, const __u8 *data)
{
 __s8 zoom = (__s8)data[0];

 switch (query) {
 case 132:
  return (zoom == 0) ? 0 : (zoom > 0 ? data[2] : -data[2]);

 case 129:
 case 130:
 case 128:
 case 131:
 default:
  return data[2];
 }
}
