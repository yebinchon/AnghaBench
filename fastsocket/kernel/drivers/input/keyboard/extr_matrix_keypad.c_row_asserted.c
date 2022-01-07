
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix_keypad_platform_data {int active_low; int * row_gpios; } ;


 scalar_t__ gpio_get_value_cansleep (int ) ;

__attribute__((used)) static bool row_asserted(const struct matrix_keypad_platform_data *pdata,
    int row)
{
 return gpio_get_value_cansleep(pdata->row_gpios[row]) ?
   !pdata->active_low : pdata->active_low;
}
