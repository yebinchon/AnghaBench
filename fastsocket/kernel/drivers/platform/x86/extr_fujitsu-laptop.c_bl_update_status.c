
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int FUJLAPTOP_DBG_ERROR ;
 int FUNC_BACKLIGHT ;
 int call_fext_func (int ,int,int,int) ;
 int set_lcd_level (int ) ;
 int set_lcd_level_alt (int ) ;
 scalar_t__ use_alt_lcd_levels ;
 int vdbg_printk (int ,char*,int) ;

__attribute__((used)) static int bl_update_status(struct backlight_device *b)
{
 int ret;
 if (b->props.power == 4)
  ret = call_fext_func(FUNC_BACKLIGHT, 0x1, 0x4, 0x3);
 else
  ret = call_fext_func(FUNC_BACKLIGHT, 0x1, 0x4, 0x0);
 if (ret != 0)
  vdbg_printk(FUJLAPTOP_DBG_ERROR,
   "Unable to adjust backlight power, error code %i\n",
   ret);

 if (use_alt_lcd_levels)
  ret = set_lcd_level_alt(b->props.brightness);
 else
  ret = set_lcd_level(b->props.brightness);
 if (ret != 0)
  vdbg_printk(FUJLAPTOP_DBG_ERROR,
   "Unable to adjust LCD brightness, error code %i\n",
   ret);
 return ret;
}
