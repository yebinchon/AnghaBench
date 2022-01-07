
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_OFFSET ;
 scalar_t__ probe_kernel_address (unsigned short*,unsigned short) ;

int is_valid_bugaddr(unsigned long ip)
{
 unsigned short ud2;

 if (ip < PAGE_OFFSET)
  return 0;
 if (probe_kernel_address((unsigned short *)ip, ud2))
  return 0;

 return ud2 == 0x0b0f;
}
