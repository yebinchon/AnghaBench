
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIUINTENL ;
 int GIUINTSTATL ;
 unsigned int GPIO_PIN_OF_IRQ (unsigned int) ;
 int giu_clear (int ,int) ;
 int giu_write (int ,int) ;

__attribute__((used)) static void mask_ack_giuint_low(unsigned int irq)
{
 unsigned int pin;

 pin = GPIO_PIN_OF_IRQ(irq);
 giu_clear(GIUINTENL, 1 << pin);
 giu_write(GIUINTSTATL, 1 << pin);
}
