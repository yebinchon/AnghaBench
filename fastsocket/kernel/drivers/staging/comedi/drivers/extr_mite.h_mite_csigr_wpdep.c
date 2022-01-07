
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int mite_csigr_wpdep(u32 csigr_bits)
{
 unsigned int wpdep_bits = (csigr_bits >> 20) & 0x7;
 if (wpdep_bits == 0)
  return 0;
 else
  return 1 << (wpdep_bits - 1);
}
