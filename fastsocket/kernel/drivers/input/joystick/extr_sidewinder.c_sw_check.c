
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;



__attribute__((used)) static int sw_check(__u64 t)
{
 unsigned char sum = 0;

 if ((t & 0x8080808080808080ULL) ^ 0x80)
  return -1;

 while (t) {
  sum += t & 0xf;
  t >>= 4;
 }

 return sum & 0xf;
}
