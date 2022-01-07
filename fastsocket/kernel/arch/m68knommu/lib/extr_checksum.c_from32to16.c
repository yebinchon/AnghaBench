
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned short from32to16(unsigned long x)
{

 x = (x & 0xffff) + (x >> 16);

 x = (x & 0xffff) + (x >> 16);
 return x;
}
