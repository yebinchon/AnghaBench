
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct n2rng {scalar_t__* test_buffer; } ;


 int SELFTEST_BUFFER_WORDS ;

__attribute__((used)) static int n2rng_test_buffer_find(struct n2rng *np, u64 val)
{
 int i, count = 0;


 for (i = 1; i < SELFTEST_BUFFER_WORDS; i++) {
  if (np->test_buffer[i] == val)
   count++;
 }
 return count;
}
