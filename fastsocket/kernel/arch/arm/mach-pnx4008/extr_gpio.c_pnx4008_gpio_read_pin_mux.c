
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int GPIO_BIT_MASK (unsigned short) ;
 scalar_t__ GPIO_ISBID (unsigned short) ;
 scalar_t__ GPIO_ISMUX (unsigned short) ;
 scalar_t__ GPIO_ISOUT (unsigned short) ;
 int PIO_MUX_STATE ;
 int gpio_lock () ;
 int gpio_read_bit (int ,int) ;
 int* gpio_to_mux_map ;
 int gpio_unlock () ;
 int* outp_to_mux_map ;

int pnx4008_gpio_read_pin_mux(unsigned short pin)
{
 int gpio = GPIO_BIT_MASK(pin);
 int ret = -EFAULT;

 gpio_lock();
 if (GPIO_ISBID(pin)) {
  ret = gpio_read_bit(PIO_MUX_STATE, gpio_to_mux_map[gpio]);
 } else if (GPIO_ISOUT(pin)) {
  ret = gpio_read_bit(PIO_MUX_STATE, outp_to_mux_map[gpio]);
 } else if (GPIO_ISMUX(pin)) {
  ret = gpio_read_bit(PIO_MUX_STATE, gpio);
 }
 gpio_unlock();
 return ret;
}
