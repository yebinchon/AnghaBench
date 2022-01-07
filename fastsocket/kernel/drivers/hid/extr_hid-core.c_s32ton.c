
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef unsigned int __s32 ;



__attribute__((used)) static u32 s32ton(__s32 value, unsigned n)
{
 s32 a = value >> (n - 1);
 if (a && a != -1)
  return value < 0 ? 1 << (n - 1) : (1 << (n - 1)) - 1;
 return value & ((1 << n) - 1);
}
