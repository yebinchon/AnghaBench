
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIO_GPIO_PIN_SELECT ;
 int SIO_GPIO_UNIT ;
 int device_select (int ) ;
 int superio_outb (int ,unsigned int) ;

__attribute__((used)) static void select_pin(unsigned iminor)
{

 device_select(SIO_GPIO_UNIT);
 superio_outb(SIO_GPIO_PIN_SELECT,
       ((iminor << 1) & 0xF0) | (iminor & 0x7));
}
