
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int IRQ_EINT0 ;
 unsigned int IRQ_EINT4 ;
 unsigned int IRQ_EINT8 ;
 unsigned int S3C2410_GPF (int) ;
 unsigned int S3C2410_GPG (int) ;

int s3c2410_gpio_getirq(unsigned int pin)
{
 if (pin < S3C2410_GPF(0) || pin > S3C2410_GPG(15))
  return -EINVAL;

 if (pin < S3C2410_GPG(0) && pin > S3C2410_GPF(7))
  return -EINVAL;

 if (pin < S3C2410_GPF(4))
  return (pin - S3C2410_GPF(0)) + IRQ_EINT0;

 if (pin < S3C2410_GPG(0))
  return (pin - S3C2410_GPF(4)) + IRQ_EINT4;

 return (pin - S3C2410_GPG(0)) + IRQ_EINT8;
}
