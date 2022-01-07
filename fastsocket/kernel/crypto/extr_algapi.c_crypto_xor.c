
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int crypto_xor_byte (int *,int *,unsigned int) ;

void crypto_xor(u8 *dst, const u8 *src, unsigned int size)
{
 u32 *a = (u32 *)dst;
 u32 *b = (u32 *)src;

 for (; size >= 4; size -= 4)
  *a++ ^= *b++;

 crypto_xor_byte((u8 *)a, (u8 *)b, size);
}
