
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
tsi108_stat_carry_one(int carry, int carry_bit, int carry_shift,
        unsigned long *upper)
{
 if (carry & carry_bit)
  *upper += carry_shift;
}
