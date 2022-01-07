
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 int cm_rmw_mod_reg_bits (int ,int,int ,int ) ;

__attribute__((used)) static inline u32 cm_clear_mod_reg_bits(u32 bits, s16 module, s16 idx)
{
 return cm_rmw_mod_reg_bits(bits, 0x0, module, idx);
}
