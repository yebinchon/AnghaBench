
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIUINTENH ;
 int GIUINT_HIGH_OFFSET ;
 int GPIO_PIN_OF_IRQ (unsigned int) ;
 int giu_clear (int ,int) ;

__attribute__((used)) static void mask_giuint_high(unsigned int irq)
{
 giu_clear(GIUINTENH, 1 << (GPIO_PIN_OF_IRQ(irq) - GIUINT_HIGH_OFFSET));
}
