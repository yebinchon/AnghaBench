
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int ni_660x_max_rtsi_channel ;

__attribute__((used)) static inline unsigned NI_660x_RTSI_Gate_Select(unsigned n)
{
 BUG_ON(n > ni_660x_max_rtsi_channel);
 return 0xb + n;
}
