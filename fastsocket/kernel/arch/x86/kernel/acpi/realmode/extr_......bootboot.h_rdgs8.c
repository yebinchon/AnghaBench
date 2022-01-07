
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int addr_t ;



__attribute__((used)) static inline u8 rdgs8(addr_t addr)
{
 u8 v;
 asm volatile("movb %%gs:%1,%0" : "=q" (v) : "m" (*(u8 *)addr));
 return v;
}
