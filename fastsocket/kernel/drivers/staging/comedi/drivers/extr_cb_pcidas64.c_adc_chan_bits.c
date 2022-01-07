
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;



__attribute__((used)) static inline uint16_t adc_chan_bits(unsigned int channel)
{
 return channel & 0x3f;
}
