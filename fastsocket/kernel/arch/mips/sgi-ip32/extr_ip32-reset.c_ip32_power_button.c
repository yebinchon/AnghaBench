
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
struct TYPE_5__ {scalar_t__ expires; int function; } ;


 int HZ ;
 int POWERDOWN_FREQ ;
 int POWERDOWN_TIMEOUT ;
 int SIGINT ;
 int add_timer (TYPE_1__*) ;
 int blink_timeout (int ) ;
 TYPE_3__ blink_timer ;
 scalar_t__ has_panicked ;
 int init_timer (TYPE_1__*) ;
 int ip32_machine_power_off () ;
 scalar_t__ jiffies ;
 scalar_t__ kill_cad_pid (int ,int) ;
 int power_timeout ;
 TYPE_1__ power_timer ;
 int shuting_down ;

__attribute__((used)) static inline void ip32_power_button(void)
{
 if (has_panicked)
  return;

 if (shuting_down || kill_cad_pid(SIGINT, 1)) {

  ip32_machine_power_off();
 }

 shuting_down = 1;
 blink_timer.data = POWERDOWN_FREQ;
 blink_timeout(POWERDOWN_FREQ);

 init_timer(&power_timer);
 power_timer.function = power_timeout;
 power_timer.expires = jiffies + POWERDOWN_TIMEOUT * HZ;
 add_timer(&power_timer);
}
