
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static inline void outl(u32 v, u16 port)
{
 asm volatile("outl %0,%1" : : "a" (v), "dN" (port));
}
