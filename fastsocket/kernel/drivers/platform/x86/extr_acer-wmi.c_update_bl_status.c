
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;


 int ACER_CAP_BRIGHTNESS ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int set_u32 (int,int ) ;

__attribute__((used)) static int update_bl_status(struct backlight_device *bd)
{
 int intensity = bd->props.brightness;

 if (bd->props.power != FB_BLANK_UNBLANK)
  intensity = 0;
 if (bd->props.fb_blank != FB_BLANK_UNBLANK)
  intensity = 0;

 set_u32(intensity, ACER_CAP_BRIGHTNESS);

 return 0;
}
