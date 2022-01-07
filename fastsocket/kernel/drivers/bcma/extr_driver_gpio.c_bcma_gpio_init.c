
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_chip {char* label; int ngpio; int base; int direction_output; int direction_input; int set; int get; int free; int request; int owner; } ;
struct bcma_drv_cc {TYPE_2__* core; struct gpio_chip gpio; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {scalar_t__ hosttype; } ;


 scalar_t__ BCMA_HOSTTYPE_SOC ;
 int THIS_MODULE ;
 int bcma_gpio_direction_input ;
 int bcma_gpio_direction_output ;
 int bcma_gpio_free ;
 int bcma_gpio_get_value ;
 int bcma_gpio_request ;
 int bcma_gpio_set_value ;
 int gpiochip_add (struct gpio_chip*) ;

int bcma_gpio_init(struct bcma_drv_cc *cc)
{
 struct gpio_chip *chip = &cc->gpio;

 chip->label = "bcma_gpio";
 chip->owner = THIS_MODULE;
 chip->request = bcma_gpio_request;
 chip->free = bcma_gpio_free;
 chip->get = bcma_gpio_get_value;
 chip->set = bcma_gpio_set_value;
 chip->direction_input = bcma_gpio_direction_input;
 chip->direction_output = bcma_gpio_direction_output;
 chip->ngpio = 16;



 if (cc->core->bus->hosttype == BCMA_HOSTTYPE_SOC)
  chip->base = 0;
 else
  chip->base = -1;

 return gpiochip_add(chip);
}
