
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p4_event_bind {int** cntr; } ;


 int P4_CNTR_LIMIT ;
 int test_bit (int,unsigned long*) ;

__attribute__((used)) static int p4_next_cntr(int thread, unsigned long *used_mask,
   struct p4_event_bind *bind)
{
 int i, j;

 for (i = 0; i < P4_CNTR_LIMIT; i++) {
  j = bind->cntr[thread][i];
  if (j != -1 && !test_bit(j, used_mask))
   return j;
 }

 return -1;
}
