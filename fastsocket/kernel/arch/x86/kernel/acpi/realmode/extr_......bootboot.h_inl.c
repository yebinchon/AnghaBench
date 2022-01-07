
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 inl(u32 port)
{
 u32 v;
 asm volatile("inl %1,%0" : "=a" (v) : "dN" (port));
 return v;
}
