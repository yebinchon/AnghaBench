
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ioconfig_bitshift (unsigned int) ;

__attribute__((used)) static inline unsigned pfi_output_select_bits(unsigned pfi_channel,
           unsigned output_select)
{
 return (output_select & 0x3) << ioconfig_bitshift(pfi_channel);
}
