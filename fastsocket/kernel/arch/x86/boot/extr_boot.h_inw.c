
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 inw(u16 port)
{
 u16 v;
 asm volatile("inw %1,%0" : "=a" (v) : "dN" (port));
 return v;
}
