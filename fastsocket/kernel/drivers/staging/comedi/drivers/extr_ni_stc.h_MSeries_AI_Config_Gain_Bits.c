
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned MSeries_AI_Config_Gain_Bits(unsigned range)
{
 return (range & 0x7) << 9;
}
