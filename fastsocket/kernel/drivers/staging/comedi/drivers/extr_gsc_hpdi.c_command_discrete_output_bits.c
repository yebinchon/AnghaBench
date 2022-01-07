
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ command_channel_valid (unsigned int) ;

uint32_t command_discrete_output_bits(unsigned int channel, int output,
          int output_value)
{
 uint32_t bits = 0;

 if (command_channel_valid(channel) == 0)
  return 0;
 if (output) {
  bits |= 0x1 << (16 + channel);
  if (output_value)
   bits |= 0x1 << (24 + channel);
 } else
  bits |= 0x1 << (24 + channel);

 return bits;
}
