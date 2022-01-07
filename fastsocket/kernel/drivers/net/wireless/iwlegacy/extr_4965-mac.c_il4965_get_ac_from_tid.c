
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;


 size_t ARRAY_SIZE (int*) ;
 int EINVAL ;
 scalar_t__ likely (int) ;
 int* tid_to_ac ;

__attribute__((used)) static inline int
il4965_get_ac_from_tid(u16 tid)
{
 if (likely(tid < ARRAY_SIZE(tid_to_ac)))
  return tid_to_ac[tid];


 return -EINVAL;
}
