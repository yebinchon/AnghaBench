
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned ioconfig_bitshift(unsigned pfi_channel)
{
 if (pfi_channel % 2)
  return 0;
 else
  return 8;
}
