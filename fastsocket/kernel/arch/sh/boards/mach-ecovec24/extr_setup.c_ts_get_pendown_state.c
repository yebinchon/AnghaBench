
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_FN_INTC_IRQ0 ;
 int GPIO_PTZ0 ;
 int gpio_direction_input (int ) ;
 int gpio_free (int ) ;
 int gpio_get_value (int ) ;
 int gpio_request (int ,int *) ;

__attribute__((used)) static int ts_get_pendown_state(void)
{
 int val = 0;
 gpio_free(GPIO_FN_INTC_IRQ0);
 gpio_request(GPIO_PTZ0, ((void*)0));
 gpio_direction_input(GPIO_PTZ0);

 val = gpio_get_value(GPIO_PTZ0);

 gpio_free(GPIO_PTZ0);
 gpio_request(GPIO_FN_INTC_IRQ0, ((void*)0));

 return val ? 0 : 1;
}
