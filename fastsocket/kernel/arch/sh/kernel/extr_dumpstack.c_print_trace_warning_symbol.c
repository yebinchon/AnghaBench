
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_symbol (char*,unsigned long) ;
 int printk (char*) ;

__attribute__((used)) static void
print_trace_warning_symbol(void *data, char *msg, unsigned long symbol)
{
 printk(data);
 print_symbol(msg, symbol);
 printk("\n");
}
