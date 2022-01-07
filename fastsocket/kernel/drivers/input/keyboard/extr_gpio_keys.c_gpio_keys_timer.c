
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_button_data {int work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void gpio_keys_timer(unsigned long _data)
{
 struct gpio_button_data *data = (struct gpio_button_data *)_data;

 schedule_work(&data->work);
}
