
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,void*,char*,void*) ;

void printk_address(unsigned long address, int reliable)
{
 printk(" [<%p>] %s%pS\n", (void *) address,
   reliable ? "" : "? ", (void *) address);
}
