
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 int __ffs (int) ;
 int prm_read_mod_reg (int ,int ) ;

__attribute__((used)) static u32 prm_read_mod_bits_shift(s16 domain, s16 idx, u32 mask)
{
 u32 v;

 v = prm_read_mod_reg(domain, idx);
 v &= mask;
 v >>= __ffs(mask);

 return v;
}
