
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;


 int EINVAL ;
 int WM8350_CS1_FLASH_MODE ;
 int WM8350_CS1_TRIGSRC ;
 int WM8350_CS2_FLASH_MODE ;
 int WM8350_CS2_TRIGSRC ;
 int WM8350_CSA_FLASH_CONTROL ;
 int WM8350_CSB_FLASH_CONTROL ;


 int wm8350_reg_write (struct wm8350*,int ,int) ;

int wm8350_isink_set_flash(struct wm8350 *wm8350, int isink, u16 mode,
      u16 trigger, u16 duration, u16 on_ramp, u16 off_ramp,
      u16 drive)
{
 switch (isink) {
 case 129:
  wm8350_reg_write(wm8350, WM8350_CSA_FLASH_CONTROL,
     (mode ? WM8350_CS1_FLASH_MODE : 0) |
     (trigger ? WM8350_CS1_TRIGSRC : 0) |
     duration | on_ramp | off_ramp | drive);
  break;
 case 128:
  wm8350_reg_write(wm8350, WM8350_CSB_FLASH_CONTROL,
     (mode ? WM8350_CS2_FLASH_MODE : 0) |
     (trigger ? WM8350_CS2_TRIGSRC : 0) |
     duration | on_ramp | off_ramp | drive);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
