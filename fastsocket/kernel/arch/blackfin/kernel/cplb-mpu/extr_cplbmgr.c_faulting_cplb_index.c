
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __builtin_bfin_norm_fr1x32 (int) ;

__attribute__((used)) static inline int faulting_cplb_index(int status)
{
 int signbits = __builtin_bfin_norm_fr1x32(status & 0xFFFF);
 return 30 - signbits;
}
