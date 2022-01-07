
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int encode (unsigned long,unsigned long*) ;

__attribute__((used)) static void encode_block(unsigned long *dest, unsigned long *src, int len)
{
 int cnt, to_cnt = 0;
 unsigned long data;


 for (cnt = 0; cnt < len / 4; cnt++) {
  data = src[cnt] >> 1;
  encode(data, dest + to_cnt++);
 }


 for (cnt = 0; cnt < len / 4; cnt++) {
  data = src[cnt];
  encode(data, dest + to_cnt++);
 }
}
