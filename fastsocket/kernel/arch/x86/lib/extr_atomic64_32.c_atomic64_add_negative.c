
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ s64 ;
typedef int atomic64_t ;


 scalar_t__ atomic64_add_return (int ,int *) ;

int atomic64_add_negative(u64 delta, atomic64_t *ptr)
{
 s64 new_val = atomic64_add_return(delta, ptr);

 return new_val < 0;
}
