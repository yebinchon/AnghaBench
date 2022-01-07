
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GEDR ;
 unsigned int GPIO11_27_MASK (unsigned int) ;

__attribute__((used)) static void sa1100_high_gpio_ack(unsigned int irq)
{
 unsigned int mask = GPIO11_27_MASK(irq);

 GEDR = mask;
}
