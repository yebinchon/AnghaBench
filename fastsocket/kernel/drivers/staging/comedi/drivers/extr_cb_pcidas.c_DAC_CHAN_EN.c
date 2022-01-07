
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int DAC_CHAN_EN(unsigned int channel)
{
 return 1 << (5 + (channel & 0x1));
}
