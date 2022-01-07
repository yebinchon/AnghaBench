
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cheetah ;
 scalar_t__ cheetah_plus ;
 scalar_t__ tlb_type ;

__attribute__((used)) static inline bool us3mc_platform(void)
{
 if (tlb_type == cheetah || tlb_type == cheetah_plus)
  return 1;
 return 0;
}
