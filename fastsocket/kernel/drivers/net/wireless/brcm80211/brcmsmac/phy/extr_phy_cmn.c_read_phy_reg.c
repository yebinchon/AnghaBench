
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int d11core; scalar_t__ phy_wreg; } ;


 int D11REGOFFS (int ) ;
 int bcma_read16 (int ,int ) ;
 int bcma_wflush16 (int ,int ,int ) ;
 int phyregaddr ;
 int phyregdata ;

u16 read_phy_reg(struct brcms_phy *pi, u16 addr)
{
 bcma_wflush16(pi->d11core, D11REGOFFS(phyregaddr), addr);

 pi->phy_wreg = 0;
 return bcma_read16(pi->d11core, D11REGOFFS(phyregdata));
}
