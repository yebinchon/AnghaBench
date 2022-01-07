
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_PIN_PA18 ;
 int AT91_PIN_PA19 ;
 int at91_set_gpio_output (int ,int) ;

__attribute__((used)) static void sam9263ek_transceiver_switch(int on)
{
 if (on) {
  at91_set_gpio_output(AT91_PIN_PA18, 1);
  at91_set_gpio_output(AT91_PIN_PA19, 0);
 } else {
  at91_set_gpio_output(AT91_PIN_PA18, 0);
  at91_set_gpio_output(AT91_PIN_PA19, 1);
 }
}
