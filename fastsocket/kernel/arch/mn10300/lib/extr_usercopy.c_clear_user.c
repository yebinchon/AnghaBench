
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERIFY_WRITE ;
 int __do_clear_user (void*,unsigned long) ;
 scalar_t__ access_ok (int ,void*,unsigned long) ;

unsigned long
clear_user(void *to, unsigned long n)
{
 if (access_ok(VERIFY_WRITE, to, n))
  __do_clear_user(to, n);
 return n;
}
