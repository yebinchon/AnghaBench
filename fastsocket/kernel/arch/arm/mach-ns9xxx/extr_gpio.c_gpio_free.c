
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_bit (unsigned int,int ) ;
 int gpiores ;
 int might_sleep () ;

void gpio_free(unsigned gpio)
{
 might_sleep();
 clear_bit(gpio, gpiores);
 return;
}
