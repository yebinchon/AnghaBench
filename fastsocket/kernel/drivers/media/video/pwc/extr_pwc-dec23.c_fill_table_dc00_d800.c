
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_dec23_private {unsigned int* table_dc00; unsigned int* table_d800; } ;


 unsigned int ONE_HALF ;

__attribute__((used)) static void fill_table_dc00_d800(struct pwc_dec23_private *pdec)
{


 int i;
 unsigned int offset1 = (1UL << (15 - 1));
 unsigned int offset2 = 0x0000;

 for (i=0; i<256; i++) {
  pdec->table_dc00[i] = offset1 & ~((1UL << (15 - 1)));
  pdec->table_d800[i] = offset2;

  offset1 += 0x7bc4;
  offset2 += 0x7bc4;
 }
}
