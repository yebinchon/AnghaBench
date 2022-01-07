
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



__attribute__((used)) static u8 cycx_log2(u32 n)
{
 u8 log = 0;

 if (!n)
  return 0;

 while (n > 1) {
  n >>= 1;
  ++log;
 }

 return log;
}
