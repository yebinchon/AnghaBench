
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IXP_RESET1 ;
 int ixp2000_reg_read (int ) ;
 int ixp2000_reg_wrb (int ,int) ;
 int ixp2000_uengine_mask ;

void ixp2000_uengine_reset(u32 uengine_mask)
{
 u32 value;

 value = ixp2000_reg_read(IXP_RESET1) & ~ixp2000_uengine_mask;

 uengine_mask &= ixp2000_uengine_mask;
 ixp2000_reg_wrb(IXP_RESET1, value | uengine_mask);
 ixp2000_reg_wrb(IXP_RESET1, value);
}
