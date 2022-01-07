
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le64 ;


 int ENTRIES_PER_WORD ;
 unsigned int ENTRIES_SHIFT ;
 int __clear_bit_le (unsigned int,void*) ;
 int __set_bit_le (unsigned int,void*) ;

__attribute__((used)) static void sm_set_bitmap(void *addr, unsigned b, unsigned val)
{
 __le64 *words_le = addr;
 __le64 *w_le = words_le + (b >> ENTRIES_SHIFT);

 b = (b & (ENTRIES_PER_WORD - 1)) << 1;

 if (val & 2)
  __set_bit_le(b, (void *) w_le);
 else
  __clear_bit_le(b, (void *) w_le);

 if (val & 1)
  __set_bit_le(b + 1, (void *) w_le);
 else
  __clear_bit_le(b + 1, (void *) w_le);
}
