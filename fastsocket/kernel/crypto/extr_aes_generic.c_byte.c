
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int const u8 ;
typedef unsigned int u32 ;



__attribute__((used)) static inline u8 byte(const u32 x, const unsigned n)
{
 return x >> (n << 3);
}
