
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le64 ;


 int ENTRIES_PER_WORD ;
 unsigned int ENTRIES_SHIFT ;
 int test_bit_le (unsigned int,void*) ;

__attribute__((used)) static unsigned sm_lookup_bitmap(void *addr, unsigned b)
{
 __le64 *words_le = addr;
 __le64 *w_le = words_le + (b >> ENTRIES_SHIFT);
 unsigned hi, lo;

 b = (b & (ENTRIES_PER_WORD - 1)) << 1;
 hi = !!test_bit_le(b, (void *) w_le);
 lo = !!test_bit_le(b + 1, (void *) w_le);
 return (hi << 1) | lo;
}
