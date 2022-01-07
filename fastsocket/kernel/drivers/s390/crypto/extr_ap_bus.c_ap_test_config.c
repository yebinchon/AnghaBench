
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ap_test_bit (unsigned int*,unsigned int) ;

__attribute__((used)) static inline int ap_test_config(unsigned int *field, unsigned int nr)
{
 if (nr > 0xFFu)
  return 0;
 return ap_test_bit((field + (nr >> 5)), (nr & 0x1f));
}
