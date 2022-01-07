
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char __u64 ;



__attribute__((used)) static int gf2k_get_bits(unsigned char *buf, int pos, int num, int shift)
{
 __u64 data = 0;
 int i;

 for (i = 0; i < num / 3 + 2; i++)
  data |= buf[pos / 3 + i] << (i * 3);
 data >>= pos % 3;
 data &= (1 << num) - 1;
 data <<= shift;

 return data;
}
