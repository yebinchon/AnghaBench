
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * intr_flags ;
 int printk (char*,...) ;

__attribute__((used)) static void debug_intr_flags(unsigned int flags)
{
 int i;
 printk("dt3k: intr_flags:");
 for (i = 0; i < 8; i++) {
  if (flags & (1 << i)) {
   printk(" %s", intr_flags[i]);
  }
 }
 printk("\n");
}
