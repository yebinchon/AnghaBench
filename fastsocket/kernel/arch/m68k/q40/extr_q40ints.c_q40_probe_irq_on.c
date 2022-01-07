
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*) ;

unsigned long q40_probe_irq_on(void)
{
 printk("irq probing not working - reconfigure the driver to avoid this\n");
 return -1;
}
