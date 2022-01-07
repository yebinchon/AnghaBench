
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSeries_AI_Bypass_Gain_Mask ;

__attribute__((used)) static inline unsigned MSeries_AI_Bypass_Gain_Bits(int gain)
{
 return (gain << 18) & MSeries_AI_Bypass_Gain_Mask;
}
