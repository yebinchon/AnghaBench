
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int GPIO_BIT_MASK (unsigned short) ;
 scalar_t__ GPIO_ISBID (unsigned short) ;
 scalar_t__ GPIO_ISRAM (unsigned short) ;
 int PIO_DRV_STATE ;
 int gpio_lock () ;
 int gpio_read_bit (int ,int) ;
 int gpio_unlock () ;

int pnx4008_gpio_read_pin_direction(unsigned short pin)
{
 int gpio = GPIO_BIT_MASK(pin);
 int ret = -EFAULT;

 gpio_lock();
 if (GPIO_ISBID(pin) || GPIO_ISRAM(pin)) {
  ret = gpio_read_bit(PIO_DRV_STATE, gpio);
 }
 gpio_unlock();
 return ret;
}
