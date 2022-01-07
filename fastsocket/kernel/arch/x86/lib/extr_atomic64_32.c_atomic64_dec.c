
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic64_t ;


 int atomic64_sub (int,int *) ;

void atomic64_dec(atomic64_t *ptr)
{
 atomic64_sub(1, ptr);
}
