
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __do_clear_user (void*,unsigned long) ;

unsigned long
__clear_user(void *to, unsigned long n)
{
 __do_clear_user(to, n);
 return n;
}
