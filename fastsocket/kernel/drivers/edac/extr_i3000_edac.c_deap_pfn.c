
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int PAGE_SHIFT ;

__attribute__((used)) static inline unsigned long deap_pfn(u8 edeap, u32 deap)
{
 deap >>= PAGE_SHIFT;
 deap |= (edeap & 1) << (32 - PAGE_SHIFT);
 return deap;
}
