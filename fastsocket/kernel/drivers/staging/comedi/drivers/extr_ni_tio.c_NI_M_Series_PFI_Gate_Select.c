
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int ni_m_series_max_pfi_channel ;

__attribute__((used)) static inline unsigned NI_M_Series_PFI_Gate_Select(unsigned n)
{
 BUG_ON(n > ni_m_series_max_pfi_channel);
 if (n < 10)
  return 1 + n;
 return 0xb + n;
}
