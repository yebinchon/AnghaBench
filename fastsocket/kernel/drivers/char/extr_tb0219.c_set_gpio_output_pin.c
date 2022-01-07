
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int EINVAL ;
 int TB0219_GPIO_OUTPUT ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tb0219_lock ;
 int tb0219_read (int ) ;
 int tb0219_write (int ,int) ;

__attribute__((used)) static inline int set_gpio_output_pin(unsigned int pin, char command)
{
 unsigned long flags;
 uint16_t value;

 if (command != '0' && command != '1')
  return -EINVAL;

 spin_lock_irqsave(&tb0219_lock, flags);
 value = tb0219_read(TB0219_GPIO_OUTPUT);
 if (command == '0')
  value &= ~(1 << pin);
 else
  value |= 1 << pin;
 tb0219_write(TB0219_GPIO_OUTPUT, value);
 spin_unlock_irqrestore(&tb0219_lock, flags);

 return 0;

}
