
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 scalar_t__ DM355EVM_MSP_LED ;
 int EINVAL ;
 int MSP_GPIO_MASK (unsigned int) ;
 scalar_t__ MSP_GPIO_REG (unsigned int) ;
 int dm355evm_msp_write (int,scalar_t__) ;
 int msp_led_cache ;

__attribute__((used)) static int msp_gpio_out(struct gpio_chip *chip, unsigned offset, int value)
{
 int mask, bits;





 if (MSP_GPIO_REG(offset) != DM355EVM_MSP_LED)
  return -EINVAL;

 mask = MSP_GPIO_MASK(offset);
 bits = msp_led_cache;

 bits &= ~mask;
 if (value)
  bits |= mask;
 msp_led_cache = bits;

 return dm355evm_msp_write(bits, DM355EVM_MSP_LED);
}
