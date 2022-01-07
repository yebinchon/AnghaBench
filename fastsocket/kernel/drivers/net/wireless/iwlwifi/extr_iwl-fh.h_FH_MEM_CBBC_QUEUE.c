
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FH_MEM_CBBC_0_15_LOWER_BOUND ;
 unsigned int FH_MEM_CBBC_16_19_LOWER_BOUND ;
 unsigned int FH_MEM_CBBC_20_31_LOWER_BOUND ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static inline unsigned int FH_MEM_CBBC_QUEUE(unsigned int chnl)
{
 if (chnl < 16)
  return FH_MEM_CBBC_0_15_LOWER_BOUND + 4 * chnl;
 if (chnl < 20)
  return FH_MEM_CBBC_16_19_LOWER_BOUND + 4 * (chnl - 16);
 WARN_ON_ONCE(chnl >= 32);
 return FH_MEM_CBBC_20_31_LOWER_BOUND + 4 * (chnl - 20);
}
