
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int M_Offset_DAC_Direct_Data(int channel)
{
 return 0xc0 + 0x4 * channel;
}
