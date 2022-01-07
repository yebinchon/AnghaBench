
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline void outw(u16 v, u16 port)
{
 asm volatile("outw %0,%1" : : "a" (v), "dN" (port));
}
