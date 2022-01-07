
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int __be32 ;


 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 int crypto_inc_byte (int *,unsigned int) ;

void crypto_inc(u8 *a, unsigned int size)
{
 __be32 *b = (__be32 *)(a + size);
 u32 c;

 for (; size >= 4; size -= 4) {
  c = be32_to_cpu(*--b) + 1;
  *b = cpu_to_be32(c);
  if (c)
   return;
 }

 crypto_inc_byte(a, size);
}
