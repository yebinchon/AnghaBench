
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int atomic64_t ;


 int atomic64_xchg (int *,int ) ;

void atomic64_set(atomic64_t *ptr, u64 new_val)
{
 atomic64_xchg(ptr, new_val);
}
