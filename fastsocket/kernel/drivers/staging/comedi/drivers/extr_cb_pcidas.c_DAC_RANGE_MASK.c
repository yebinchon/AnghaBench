
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int DAC_RANGE_MASK(unsigned int channel)
{
 return 0x3 << (8 + 2 * (channel & 0x1));
}
