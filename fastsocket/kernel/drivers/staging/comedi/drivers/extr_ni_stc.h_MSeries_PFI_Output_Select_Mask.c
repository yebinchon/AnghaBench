
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned MSeries_PFI_Output_Select_Mask(unsigned channel)
{
 return 0x1f << (channel % 3) * 5;
}
