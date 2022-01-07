
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {scalar_t__ base; scalar_t__ ngpio; int owner; int label; int set; int direction_output; int get; int direction_input; int free; int request; } ;
struct pinmux_info {scalar_t__ first_gpio; scalar_t__ last_gpio; int name; struct gpio_chip chip; } ;


 int THIS_MODULE ;
 int WARN_ON (int) ;
 int gpiochip_add (struct gpio_chip*) ;
 int pr_info (char*,int ,scalar_t__,scalar_t__) ;
 int setup_data_regs (struct pinmux_info*) ;
 int sh_gpio_direction_input ;
 int sh_gpio_direction_output ;
 int sh_gpio_free ;
 int sh_gpio_get ;
 int sh_gpio_request ;
 int sh_gpio_set ;

int register_pinmux(struct pinmux_info *pip)
{
 struct gpio_chip *chip = &pip->chip;

 pr_info("sh pinmux: %s handling gpio %d -> %d\n",
  pip->name, pip->first_gpio, pip->last_gpio);

 setup_data_regs(pip);

 chip->request = sh_gpio_request;
 chip->free = sh_gpio_free;
 chip->direction_input = sh_gpio_direction_input;
 chip->get = sh_gpio_get;
 chip->direction_output = sh_gpio_direction_output;
 chip->set = sh_gpio_set;

 WARN_ON(pip->first_gpio != 0);

 chip->label = pip->name;
 chip->owner = THIS_MODULE;
 chip->base = pip->first_gpio;
 chip->ngpio = (pip->last_gpio - pip->first_gpio) + 1;

 return gpiochip_add(chip);
}
