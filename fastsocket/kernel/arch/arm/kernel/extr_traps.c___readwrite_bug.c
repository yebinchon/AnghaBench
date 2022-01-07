
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int printk (char*,char const*) ;

void __readwrite_bug(const char *fn)
{
 printk("%s called, but not implemented\n", fn);
 BUG();
}
