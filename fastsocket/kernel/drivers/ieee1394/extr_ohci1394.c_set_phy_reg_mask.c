
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ti_ohci {int dummy; } ;


 int get_phy_reg (struct ti_ohci*,int ) ;
 int set_phy_reg (struct ti_ohci*,int ,int ) ;

__attribute__((used)) static void set_phy_reg_mask(struct ti_ohci *ohci, u8 addr, u8 data)
{
 u8 old;

 old = get_phy_reg (ohci, addr);
 old |= data;
 set_phy_reg (ohci, addr, old);

 return;
}
