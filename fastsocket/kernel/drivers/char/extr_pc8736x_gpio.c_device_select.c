
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIO_UNIT_SEL ;
 unsigned int selected_device ;
 int superio_outb (int ,unsigned int) ;

__attribute__((used)) static void device_select(unsigned devldn)
{
 superio_outb(SIO_UNIT_SEL, devldn);
 selected_device = devldn;
}
