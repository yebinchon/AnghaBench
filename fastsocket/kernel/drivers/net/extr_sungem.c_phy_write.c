
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gem {int mii_phy_addr; } ;


 int __phy_write (struct gem*,int ,int,int ) ;

__attribute__((used)) static inline void phy_write(struct gem *gp, int reg, u16 val)
{
 __phy_write(gp, gp->mii_phy_addr, reg, val);
}
