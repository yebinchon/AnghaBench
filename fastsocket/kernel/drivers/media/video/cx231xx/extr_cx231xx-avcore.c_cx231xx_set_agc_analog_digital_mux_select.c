
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int agc_analog_digital_select_gpio; } ;
struct cx231xx {TYPE_1__ board; } ;


 int cx231xx_set_gpio_direction (struct cx231xx*,int ,int) ;
 int cx231xx_set_gpio_value (struct cx231xx*,int ,int ) ;

int cx231xx_set_agc_analog_digital_mux_select(struct cx231xx *dev,
           u8 analog_or_digital)
{
 int status = 0;


 status = cx231xx_set_gpio_direction(dev,
         dev->board.
         agc_analog_digital_select_gpio, 1);


 status = cx231xx_set_gpio_value(dev,
       dev->board.agc_analog_digital_select_gpio,
       analog_or_digital);

 return status;
}
