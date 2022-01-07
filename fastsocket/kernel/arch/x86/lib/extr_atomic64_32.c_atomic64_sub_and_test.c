
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int atomic64_t ;


 scalar_t__ atomic64_sub_return (scalar_t__,int *) ;

int atomic64_sub_and_test(u64 delta, atomic64_t *ptr)
{
 u64 new_val = atomic64_sub_return(delta, ptr);

 return new_val == 0;
}
