
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*) ;

__attribute__((used)) static void show_serial_version(void)
{
 printk("MC68328 serial driver version 1.00\n");
}
