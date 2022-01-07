
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 lshift(u32 x, unsigned int s)
{
 x &= 0xFFFFFFFF;
 return ((x << s) & 0xFFFFFFFF) | (x >> (32 - s));
}
