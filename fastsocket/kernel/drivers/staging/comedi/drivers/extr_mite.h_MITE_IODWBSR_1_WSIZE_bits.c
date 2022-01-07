
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;

__attribute__((used)) static inline unsigned MITE_IODWBSR_1_WSIZE_bits(unsigned size)
{
 unsigned order = 0;
 while (size >>= 1)
  ++order;
 BUG_ON(order < 1);
 return (order - 1) & 0x1f;
}
