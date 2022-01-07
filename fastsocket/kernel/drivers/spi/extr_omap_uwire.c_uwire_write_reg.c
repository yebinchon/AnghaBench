
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int __raw_writew (int ,scalar_t__) ;
 scalar_t__ uwire_base ;
 int uwire_idx_shift ;

__attribute__((used)) static inline void uwire_write_reg(int idx, u16 val)
{
 __raw_writew(val, uwire_base + (idx << uwire_idx_shift));
}
