
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int can_sleep; int base; int direction_output; int set; int ngpio; int label; int owner; } ;
struct of_gpio_chip {int gpio_cells; int xlate; struct gpio_chip gc; } ;
struct mcu {struct device_node* np; struct of_gpio_chip of_gc; } ;
struct device_node {struct of_gpio_chip* data; int full_name; } ;


 int ENODEV ;
 int MCU_NUM_GPIO ;
 int THIS_MODULE ;
 int gpiochip_add (struct gpio_chip*) ;
 int mcu_gpio_dir_out ;
 int mcu_gpio_set ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_gpio_simple_xlate ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int mcu_gpiochip_add(struct mcu *mcu)
{
 struct device_node *np;
 struct of_gpio_chip *of_gc = &mcu->of_gc;
 struct gpio_chip *gc = &of_gc->gc;
 int ret;

 np = of_find_compatible_node(((void*)0), ((void*)0), "fsl,mcu-mpc8349emitx");
 if (!np)
  return -ENODEV;

 gc->owner = THIS_MODULE;
 gc->label = np->full_name;
 gc->can_sleep = 1;
 gc->ngpio = MCU_NUM_GPIO;
 gc->base = -1;
 gc->set = mcu_gpio_set;
 gc->direction_output = mcu_gpio_dir_out;
 of_gc->gpio_cells = 2;
 of_gc->xlate = of_gpio_simple_xlate;

 np->data = of_gc;
 mcu->np = np;





 ret = gpiochip_add(gc);
 if (ret)
  of_node_put(np);
 return ret;
}
