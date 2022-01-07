
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int atomic64_t ;


 int atomic64_add (int ,int *) ;

void atomic64_sub(u64 delta, atomic64_t *ptr)
{
 atomic64_add(-delta, ptr);
}
