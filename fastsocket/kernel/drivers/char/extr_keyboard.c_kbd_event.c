
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dev; } ;


 unsigned int EV_KEY ;
 unsigned int EV_MSC ;
 scalar_t__ HW_RAW (int ) ;
 unsigned int MSC_RAW ;
 int do_poke_blanked_console ;
 int kbd_keycode (unsigned int,int,scalar_t__) ;
 int kbd_rawcode (int) ;
 int keyboard_tasklet ;
 int schedule_console_callback () ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void kbd_event(struct input_handle *handle, unsigned int event_type,
        unsigned int event_code, int value)
{
 if (event_type == EV_MSC && event_code == MSC_RAW && HW_RAW(handle->dev))
  kbd_rawcode(value);
 if (event_type == EV_KEY)
  kbd_keycode(event_code, value, HW_RAW(handle->dev));
 tasklet_schedule(&keyboard_tasklet);
 do_poke_blanked_console = 1;
 schedule_console_callback();
}
