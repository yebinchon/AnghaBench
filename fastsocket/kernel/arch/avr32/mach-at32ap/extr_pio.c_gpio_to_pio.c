
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pio_device {int regs; } ;


 unsigned int MAX_NR_PIO_DEVICES ;
 struct pio_device* pio_dev ;

__attribute__((used)) static struct pio_device *gpio_to_pio(unsigned int gpio)
{
 struct pio_device *pio;
 unsigned int index;

 index = gpio >> 5;
 if (index >= MAX_NR_PIO_DEVICES)
  return ((void*)0);
 pio = &pio_dev[index];
 if (!pio->regs)
  return ((void*)0);

 return pio;
}
