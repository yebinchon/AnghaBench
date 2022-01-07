
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int IRQ_EINT0 ;
 unsigned int S3C2400_GPE (int) ;
 unsigned int S3C2410_GPE (int ) ;

int s3c2400_gpio_getirq(unsigned int pin)
{
 if (pin < S3C2410_GPE(0) || pin > S3C2400_GPE(7))
  return -EINVAL;

 return (pin - S3C2410_GPE(0)) + IRQ_EINT0;
}
