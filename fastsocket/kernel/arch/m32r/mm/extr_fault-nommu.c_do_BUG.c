
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bust_spinlocks (int) ;
 int printk (char*,char const*,int) ;

void do_BUG(const char *file, int line)
{
 bust_spinlocks(1);
 printk("kernel BUG at %s:%d!\n", file, line);
}
