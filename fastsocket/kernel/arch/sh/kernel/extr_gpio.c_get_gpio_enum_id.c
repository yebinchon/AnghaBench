
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinmux_info {int gpio_data_size; int mark; int data; scalar_t__* gpio_data; TYPE_1__* gpios; } ;
typedef scalar_t__ pinmux_enum_t ;
struct TYPE_2__ {scalar_t__ enum_id; } ;


 int enum_in_range (scalar_t__,int *) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static int get_gpio_enum_id(struct pinmux_info *gpioc, unsigned gpio,
       int pos, pinmux_enum_t *enum_idp)
{
 pinmux_enum_t enum_id = gpioc->gpios[gpio].enum_id;
 pinmux_enum_t *data = gpioc->gpio_data;
 int k;

 if (!enum_in_range(enum_id, &gpioc->data)) {
  if (!enum_in_range(enum_id, &gpioc->mark)) {
   pr_err("non data/mark enum_id for gpio %d\n", gpio);
   return -1;
  }
 }

 if (pos) {
  *enum_idp = data[pos + 1];
  return pos + 1;
 }

 for (k = 0; k < gpioc->gpio_data_size; k++) {
  if (data[k] == enum_id) {
   *enum_idp = data[k + 1];
   return k + 1;
  }
 }

 pr_err("cannot locate data/mark enum_id for gpio %d\n", gpio);
 return -1;
}
