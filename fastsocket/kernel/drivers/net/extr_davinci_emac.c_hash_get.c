
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 hash_get(u8 *addr)
{
 u32 hash;
 u8 tmpval;
 int cnt;
 hash = 0;

 for (cnt = 0; cnt < 2; cnt++) {
  tmpval = *addr++;
  hash ^= (tmpval >> 2) ^ (tmpval << 4);
  tmpval = *addr++;
  hash ^= (tmpval >> 4) ^ (tmpval << 2);
  tmpval = *addr++;
  hash ^= (tmpval >> 6) ^ (tmpval);
 }

 return hash & 0x3F;
}
