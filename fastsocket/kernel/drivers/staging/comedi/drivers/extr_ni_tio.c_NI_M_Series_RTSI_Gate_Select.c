
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int ni_m_series_max_rtsi_channel ;

__attribute__((used)) static inline unsigned NI_M_Series_RTSI_Gate_Select(unsigned n)
{
 BUG_ON(n > ni_m_series_max_rtsi_channel);
 if (n == 7)
  return 0x1b;
 return 0xb + n;
}
