
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERIFY_READ ;
 int __copy_user_zeroing (void*,void const*,unsigned long) ;
 scalar_t__ access_ok (int ,void const*,unsigned long) ;

unsigned long
__generic_copy_from_user(void *to, const void *from, unsigned long n)
{
 if (access_ok(VERIFY_READ, from, n))
  __copy_user_zeroing(to, from, n);
 return n;
}
