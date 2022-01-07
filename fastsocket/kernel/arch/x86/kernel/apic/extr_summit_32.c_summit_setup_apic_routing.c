
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nr_ioapics ;
 int printk (char*,int ) ;

__attribute__((used)) static void summit_setup_apic_routing(void)
{
 printk("Enabling APIC mode:  Summit.  Using %d I/O APICs\n",
      nr_ioapics);
}
