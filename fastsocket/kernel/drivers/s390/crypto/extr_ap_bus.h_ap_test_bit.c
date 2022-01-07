
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AP_MAX_BITS ;

__attribute__((used)) static inline int ap_test_bit(unsigned int *ptr, unsigned int nr)
{
 if (nr > AP_MAX_BITS)
  return 0;
 return (*ptr & (0x80000000u >> nr)) != 0;
}
