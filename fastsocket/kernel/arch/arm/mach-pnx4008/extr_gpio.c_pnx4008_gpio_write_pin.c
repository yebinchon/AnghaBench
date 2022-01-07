
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int GPIO_BIT_MASK (unsigned short) ;
 scalar_t__ GPIO_ISBID (unsigned short) ;
 scalar_t__ GPIO_ISOUT (unsigned short) ;
 scalar_t__ GPIO_ISRAM (unsigned short) ;
 int PIO_DRV_STATE ;
 int PIO_OUTP_CLR ;
 int PIO_OUTP_SET ;
 int PIO_SDOUTP_CLR ;
 int PIO_SDOUTP_SET ;
 int gpio_lock () ;
 scalar_t__ gpio_read_bit (int ,int) ;
 int gpio_set_bit (int ,int) ;
 int gpio_unlock () ;
 int printk (char*,int,int ) ;

int pnx4008_gpio_write_pin(unsigned short pin, int output)
{
 int gpio = GPIO_BIT_MASK(pin);
 int ret = -EFAULT;

 gpio_lock();
 if (GPIO_ISOUT(pin)) {
  printk( "writing '%x' to '%x'\n",
    gpio, output ? PIO_OUTP_SET : PIO_OUTP_CLR );
  ret = gpio_set_bit(output ? PIO_OUTP_SET : PIO_OUTP_CLR, gpio);
 } else if (GPIO_ISRAM(pin)) {
  if (gpio_read_bit(PIO_DRV_STATE, gpio) > 0)
   ret = gpio_set_bit(output ? PIO_SDOUTP_SET :
        PIO_SDOUTP_CLR, gpio);
 } else if (GPIO_ISBID(pin)) {
  if (gpio_read_bit(PIO_DRV_STATE, gpio) > 0)
   ret = gpio_set_bit(output ? PIO_OUTP_SET :
        PIO_OUTP_CLR, gpio);
 }
 gpio_unlock();
 return ret;
}
