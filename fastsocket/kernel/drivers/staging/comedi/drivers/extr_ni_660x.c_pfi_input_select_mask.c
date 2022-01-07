
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ioconfig_bitshift (unsigned int) ;

__attribute__((used)) static inline unsigned pfi_input_select_mask(unsigned pfi_channel)
{
 return 0x7 << (4 + ioconfig_bitshift(pfi_channel));
}
