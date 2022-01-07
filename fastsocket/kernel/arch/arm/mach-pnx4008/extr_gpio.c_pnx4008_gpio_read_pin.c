
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long EFAULT ;
 int GPIO_BIT_MASK (unsigned short) ;
 scalar_t__ GPIO_ISBID (unsigned short) ;
 scalar_t__ GPIO_ISIN (unsigned short) ;
 scalar_t__ GPIO_ISOUT (unsigned short) ;
 scalar_t__ GPIO_ISRAM (unsigned short) ;
 int PIO_DRV_STATE ;
 int PIO_INP_STATE ;
 int PIO_OUTP_STATE ;
 int PIO_SDINP_STATE ;
 int gpio_lock () ;
 unsigned long gpio_read_bit (int ,int) ;
 int* gpio_to_inp_map ;
 int gpio_unlock () ;

unsigned long pnx4008_gpio_read_pin(unsigned short pin)
{
 unsigned long ret = -EFAULT;
 int gpio = GPIO_BIT_MASK(pin);
 gpio_lock();
 if (GPIO_ISOUT(pin)) {
  ret = gpio_read_bit(PIO_OUTP_STATE, gpio);
 } else if (GPIO_ISRAM(pin)) {
  if (gpio_read_bit(PIO_DRV_STATE, gpio) == 0) {
   ret = gpio_read_bit(PIO_SDINP_STATE, gpio);
  }
 } else if (GPIO_ISBID(pin)) {
  ret = gpio_read_bit(PIO_DRV_STATE, gpio);
  if (ret > 0)
   ret = gpio_read_bit(PIO_OUTP_STATE, gpio);
  else if (ret == 0)
   ret =
       gpio_read_bit(PIO_INP_STATE, gpio_to_inp_map[gpio]);
 } else if (GPIO_ISIN(pin)) {
  ret = gpio_read_bit(PIO_INP_STATE, gpio);
 }
 gpio_unlock();
 return ret;
}
