
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 unsigned long GPIO_BIT (unsigned short) ;
 size_t GPIO_INDEX ;
 scalar_t__ GPIO_ISBID (unsigned short) ;
 scalar_t__ GPIO_ISIN (unsigned short) ;
 scalar_t__ GPIO_ISMUX (unsigned short) ;
 scalar_t__ GPIO_ISOUT (unsigned short) ;
 scalar_t__ GPIO_ISRAM (unsigned short) ;
 size_t INP_INDEX ;
 size_t MUX_INDEX ;
 size_t OUTP_INDEX ;
 unsigned long* access_map ;
 int gpio_lock () ;
 int gpio_unlock () ;

int pnx4008_gpio_register_pin(unsigned short pin)
{
 unsigned long bit = GPIO_BIT(pin);
 int ret = -EBUSY;

 gpio_lock();

 if (GPIO_ISBID(pin)) {
  if (access_map[GPIO_INDEX] & bit)
   goto out;
  access_map[GPIO_INDEX] |= bit;

 } else if (GPIO_ISRAM(pin)) {
  if (access_map[GPIO_INDEX] & bit)
   goto out;
  access_map[GPIO_INDEX] |= bit;

 } else if (GPIO_ISMUX(pin)) {
  if (access_map[MUX_INDEX] & bit)
   goto out;
  access_map[MUX_INDEX] |= bit;

 } else if (GPIO_ISOUT(pin)) {
  if (access_map[OUTP_INDEX] & bit)
   goto out;
  access_map[OUTP_INDEX] |= bit;

 } else if (GPIO_ISIN(pin)) {
  if (access_map[INP_INDEX] & bit)
   goto out;
  access_map[INP_INDEX] |= bit;
 } else
  goto out;
 ret = 0;

out:
 gpio_unlock();
 return ret;
}
