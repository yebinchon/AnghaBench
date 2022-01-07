
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_control_mapping {int dummy; } ;
typedef int __u8 ;
typedef scalar_t__ __s32 ;


 scalar_t__ abs (scalar_t__) ;
 int min (int,int) ;

__attribute__((used)) static void uvc_ctrl_set_zoom(struct uvc_control_mapping *mapping,
 __s32 value, __u8 *data)
{
 data[0] = value == 0 ? 0 : (value > 0) ? 1 : 0xff;
 data[2] = min((int)abs(value), 0xff);
}
