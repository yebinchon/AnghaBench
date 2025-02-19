
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIUINTSTATL ;
 int GPIO_PIN_OF_IRQ (unsigned int) ;
 int giu_write (int ,int) ;

__attribute__((used)) static void ack_giuint_low(unsigned int irq)
{
 giu_write(GIUINTSTATL, 1 << GPIO_PIN_OF_IRQ(irq));
}
