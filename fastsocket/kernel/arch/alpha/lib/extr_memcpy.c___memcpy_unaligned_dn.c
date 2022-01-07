
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void __memcpy_unaligned_dn (unsigned long d, unsigned long s,
       long n)
{

 s += n;
 d += n;
 while (n--)
  * (char *) --d = * (char *) --s;
}
