
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ath9k_regread (void*,int ) ;
 int ath9k_regwrite (void*,int ,int ) ;

__attribute__((used)) static u32 ath9k_reg_rmw(void *hw_priv, u32 reg_offset, u32 set, u32 clr)
{
 u32 val;

 val = ath9k_regread(hw_priv, reg_offset);
 val &= ~clr;
 val |= set;
 ath9k_regwrite(hw_priv, val, reg_offset);
 return val;
}
