
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int dac_lsb_4020_reg(unsigned int channel)
{
 return 0x70 + (4 * (channel & 0x1));
}
