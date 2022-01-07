
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct input_dev {int dummy; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {int brightness_level; int dev; int brightness_changed; struct input_dev* input; } ;



 int ACPI_VIDEO_NOTIFY_DEC_BRIGHTNESS ;
 int ACPI_VIDEO_NOTIFY_INC_BRIGHTNESS ;
 int FUJLAPTOP_DBG_TRACE ;
 int FUJLAPTOP_DBG_WARN ;
 int KEY_BRIGHTNESSDOWN ;
 int KEY_BRIGHTNESSUP ;
 int KEY_UNKNOWN ;
 int acpi_bus_generate_proc_event (int ,int ,int ) ;
 int disable_brightness_adjust ;
 TYPE_1__* fujitsu ;
 int get_lcd_level () ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;
 int set_lcd_level (int) ;
 int set_lcd_level_alt (int) ;
 int use_alt_lcd_levels ;
 int vdbg_printk (int ,char*,int,...) ;

__attribute__((used)) static void acpi_fujitsu_notify(struct acpi_device *device, u32 event)
{
 struct input_dev *input;
 int keycode;
 int oldb, newb;

 input = fujitsu->input;

 switch (event) {
 case 128:
  keycode = 0;
  oldb = fujitsu->brightness_level;
  get_lcd_level();
  newb = fujitsu->brightness_level;

  vdbg_printk(FUJLAPTOP_DBG_TRACE,
       "brightness button event [%i -> %i (%i)]\n",
       oldb, newb, fujitsu->brightness_changed);

  if (oldb < newb) {
   if (disable_brightness_adjust != 1) {
    if (use_alt_lcd_levels)
     set_lcd_level_alt(newb);
    else
     set_lcd_level(newb);
   }
   acpi_bus_generate_proc_event(fujitsu->dev,
    ACPI_VIDEO_NOTIFY_INC_BRIGHTNESS, 0);
   keycode = KEY_BRIGHTNESSUP;
  } else if (oldb > newb) {
   if (disable_brightness_adjust != 1) {
    if (use_alt_lcd_levels)
     set_lcd_level_alt(newb);
    else
     set_lcd_level(newb);
   }
   acpi_bus_generate_proc_event(fujitsu->dev,
    ACPI_VIDEO_NOTIFY_DEC_BRIGHTNESS, 0);
   keycode = KEY_BRIGHTNESSDOWN;
  }
  break;
 default:
  keycode = KEY_UNKNOWN;
  vdbg_printk(FUJLAPTOP_DBG_WARN,
       "unsupported event [0x%x]\n", event);
  break;
 }

 if (keycode != 0) {
  input_report_key(input, keycode, 1);
  input_sync(input);
  input_report_key(input, keycode, 0);
  input_sync(input);
 }
}
