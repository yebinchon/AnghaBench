
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ms1bit(unsigned long x)
{
 int b = 0, s;

 s = 16; if (x >> 16 == 0) s = 0; b += s; x >>= s;
 s = 8; if (x >> 8 == 0) s = 0; b += s; x >>= s;
 s = 4; if (x >> 4 == 0) s = 0; b += s; x >>= s;
 s = 2; if (x >> 2 == 0) s = 0; b += s; x >>= s;
 s = 1; if (x >> 1 == 0) s = 0; b += s;

 return b;
}
