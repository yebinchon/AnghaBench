
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char*,char*) ;

__attribute__((used)) static void print_trace_warning(void *data, char *msg)
{
 printk("%s%s\n", (char *)data, msg);
}
