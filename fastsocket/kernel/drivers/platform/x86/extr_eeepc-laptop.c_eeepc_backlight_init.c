
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int max_brightness; int power; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int EEEPC_HOTK_FILE ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* backlight_device_register (int ,struct device*,int *,int *) ;
 int backlight_update_status (struct backlight_device*) ;
 struct backlight_device* eeepc_backlight_device ;
 int eeepcbl_ops ;
 int pr_err (char*) ;
 int read_brightness (int *) ;

__attribute__((used)) static int eeepc_backlight_init(struct device *dev)
{
 struct backlight_device *bd;

 bd = backlight_device_register(EEEPC_HOTK_FILE, dev,
           ((void*)0), &eeepcbl_ops);
 if (IS_ERR(bd)) {
  pr_err("Could not register eeepc backlight device\n");
  eeepc_backlight_device = ((void*)0);
  return PTR_ERR(bd);
 }
 eeepc_backlight_device = bd;
 bd->props.max_brightness = 15;
 bd->props.brightness = read_brightness(((void*)0));
 bd->props.power = FB_BLANK_UNBLANK;
 backlight_update_status(bd);
 return 0;
}
