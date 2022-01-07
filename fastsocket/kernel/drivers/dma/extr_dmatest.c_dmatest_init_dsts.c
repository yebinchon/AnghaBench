
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 unsigned int PATTERN_COUNT_MASK ;
 unsigned int PATTERN_DST ;
 unsigned int PATTERN_OVERWRITE ;
 unsigned int test_buf_size ;

__attribute__((used)) static void dmatest_init_dsts(u8 **bufs, unsigned int start, unsigned int len)
{
 unsigned int i;
 u8 *buf;

 for (; (buf = *bufs); bufs++) {
  for (i = 0; i < start; i++)
   buf[i] = PATTERN_DST | (~i & PATTERN_COUNT_MASK);
  for ( ; i < start + len; i++)
   buf[i] = PATTERN_DST | PATTERN_OVERWRITE
    | (~i & PATTERN_COUNT_MASK);
  for ( ; i < test_buf_size; i++)
   buf[i] = PATTERN_DST | (~i & PATTERN_COUNT_MASK);
 }
}
