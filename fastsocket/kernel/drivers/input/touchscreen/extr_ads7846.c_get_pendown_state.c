
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads7846 {int (* get_pendown_state ) () ;int gpio_pendown; } ;


 int gpio_get_value (int ) ;
 int stub1 () ;

__attribute__((used)) static int get_pendown_state(struct ads7846 *ts)
{
 if (ts->get_pendown_state)
  return ts->get_pendown_state();

 return !gpio_get_value(ts->gpio_pendown);
}
