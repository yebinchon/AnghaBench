
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline void crypto_xor_byte(u8 *a, const u8 *b, unsigned int size)
{
 for (; size; size--)
  *a++ ^= *b++;
}
