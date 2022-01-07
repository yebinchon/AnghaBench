
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (void*) ;
 int printk_address (unsigned long,int) ;
 int touch_nmi_watchdog () ;

__attribute__((used)) static void print_trace_address(void *data, unsigned long addr, int reliable)
{
 touch_nmi_watchdog();
 printk(data);
 printk_address(addr, reliable);
}
