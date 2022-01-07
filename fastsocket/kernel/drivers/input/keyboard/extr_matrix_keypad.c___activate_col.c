
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix_keypad_platform_data {int * col_gpios; int active_low; } ;


 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int) ;
 int gpio_set_value_cansleep (int ,int) ;

__attribute__((used)) static void __activate_col(const struct matrix_keypad_platform_data *pdata,
      int col, bool on)
{
 bool level_on = !pdata->active_low;

 if (on) {
  gpio_direction_output(pdata->col_gpios[col], level_on);
 } else {
  gpio_set_value_cansleep(pdata->col_gpios[col], !level_on);
  gpio_direction_input(pdata->col_gpios[col]);
 }
}
