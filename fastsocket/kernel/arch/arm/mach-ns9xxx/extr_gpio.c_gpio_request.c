
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int gpiores ;
 scalar_t__ likely (int ) ;
 int ns9xxx_valid_gpio (unsigned int) ;
 scalar_t__ test_and_set_bit (unsigned int,int ) ;

int gpio_request(unsigned gpio, const char *label)
{
 if (likely(ns9xxx_valid_gpio(gpio)))
  return test_and_set_bit(gpio, gpiores) ? -EBUSY : 0;
 else
  return -EINVAL;
}
