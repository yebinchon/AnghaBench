
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct TYPE_2__ {int comm; } ;


 unsigned int PATTERN_COUNT_MASK ;
 TYPE_1__* current ;
 int dmatest_mismatch (unsigned int,unsigned int,unsigned int,unsigned int,int) ;
 int pr_warning (char*,int ,unsigned int) ;

__attribute__((used)) static unsigned int dmatest_verify(u8 **bufs, unsigned int start,
  unsigned int end, unsigned int counter, u8 pattern,
  bool is_srcbuf)
{
 unsigned int i;
 unsigned int error_count = 0;
 u8 actual;
 u8 expected;
 u8 *buf;
 unsigned int counter_orig = counter;

 for (; (buf = *bufs); bufs++) {
  counter = counter_orig;
  for (i = start; i < end; i++) {
   actual = buf[i];
   expected = pattern | (~counter & PATTERN_COUNT_MASK);
   if (actual != expected) {
    if (error_count < 32)
     dmatest_mismatch(actual, pattern, i,
        counter, is_srcbuf);
    error_count++;
   }
   counter++;
  }
 }

 if (error_count > 32)
  pr_warning("%s: %u errors suppressed\n",
   current->comm, error_count - 32);

 return error_count;
}
