
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u32 vfp_hi64to32jamming(u64 val)
{
 u32 v;

 asm(
 "cmp	%Q1, #1		@ vfp_hi64to32jamming\n\t"
 "movcc	%0, %R1\n\t"
 "orrcs	%0, %R1, #1"
 : "=r" (v) : "r" (val) : "cc");

 return v;
}
