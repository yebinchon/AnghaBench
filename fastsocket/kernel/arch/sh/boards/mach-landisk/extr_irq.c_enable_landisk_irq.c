
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PA_IMASK ;
 unsigned char ctrl_inb (int ) ;
 int ctrl_outb (unsigned char,int ) ;

__attribute__((used)) static void enable_landisk_irq(unsigned int irq)
{
 unsigned char value = (0x01 << (irq - 5));

 ctrl_outb(ctrl_inb(PA_IMASK) | value, PA_IMASK);
}
