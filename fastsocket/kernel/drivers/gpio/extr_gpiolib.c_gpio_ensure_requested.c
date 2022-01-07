
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int flags; struct gpio_chip* chip; } ;
struct gpio_chip {unsigned int base; scalar_t__ request; int owner; } ;


 int EIO ;
 int FLAG_REQUESTED ;
 scalar_t__ WARN (int,char*,int const) ;
 int clear_bit (int ,int *) ;
 int desc_set_label (struct gpio_desc*,char*) ;
 int pr_err (char*,int const) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static int gpio_ensure_requested(struct gpio_desc *desc, unsigned offset)
{
 const struct gpio_chip *chip = desc->chip;
 const int gpio = chip->base + offset;

 if (WARN(test_and_set_bit(FLAG_REQUESTED, &desc->flags) == 0,
   "autorequest GPIO-%d\n", gpio)) {
  if (!try_module_get(chip->owner)) {
   pr_err("GPIO-%d: module can't be gotten \n", gpio);
   clear_bit(FLAG_REQUESTED, &desc->flags);

   return -EIO;
  }
  desc_set_label(desc, "[auto]");

  if (chip->request)
   return 1;
 }
 return 0;
}
