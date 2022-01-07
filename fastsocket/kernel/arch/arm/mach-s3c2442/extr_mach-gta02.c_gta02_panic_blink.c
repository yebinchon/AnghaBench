
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GTA02_GPIO_AUX_LED ;
 int gpio_direction_output (int ,char) ;

__attribute__((used)) static long gta02_panic_blink(long count)
{
 long delay = 0;
 static long last_blink;
 static char led;


 if (count - last_blink < 100)
  return 0;

 led ^= 1;
 gpio_direction_output(GTA02_GPIO_AUX_LED, led);

 last_blink = count;

 return delay;
}
