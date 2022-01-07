
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;


 int HZ ;
 int N2100_POWER_BUTTON ;
 int add_timer (TYPE_1__*) ;
 int ctrl_alt_del () ;
 scalar_t__ gpio_line_get (int ) ;
 scalar_t__ jiffies ;
 TYPE_1__ power_button_poll_timer ;

__attribute__((used)) static void power_button_poll(unsigned long dummy)
{
 if (gpio_line_get(N2100_POWER_BUTTON) == 0) {
  ctrl_alt_del();
  return;
 }

 power_button_poll_timer.expires = jiffies + (HZ / 10);
 add_timer(&power_button_poll_timer);
}
