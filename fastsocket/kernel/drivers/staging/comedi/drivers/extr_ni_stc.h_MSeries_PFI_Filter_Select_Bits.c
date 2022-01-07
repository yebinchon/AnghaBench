
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSeries_PFI_Filter_Select_Mask (unsigned int) ;

__attribute__((used)) static inline unsigned MSeries_PFI_Filter_Select_Bits(unsigned channel,
            unsigned filter)
{
 return (filter << (channel *
      2)) & MSeries_PFI_Filter_Select_Mask(channel);
}
