
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {int dummy; } ;


 int __gm_phy_read (struct sky2_hw*,unsigned int,int ,int *) ;

__attribute__((used)) static inline u16 gm_phy_read(struct sky2_hw *hw, unsigned port, u16 reg)
{
 u16 v;
 __gm_phy_read(hw, port, reg, &v);
 return v;
}
