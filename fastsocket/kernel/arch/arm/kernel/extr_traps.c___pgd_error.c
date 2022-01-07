
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char const*,int,unsigned long) ;

void __pgd_error(const char *file, int line, unsigned long val)
{
 printk("%s:%d: bad pgd %08lx.\n", file, line, val);
}
