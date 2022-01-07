
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct link_params {size_t num_phys; TYPE_1__* phy; int chip_id; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int mdio_ctrl; } ;


 size_t INT_PHY ;
 int bnx2x_set_mdio_clk (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_set_mdio_emac_per_phy(struct bnx2x *bp,
     struct link_params *params)
{
 u8 phy_index;

 for (phy_index = INT_PHY; phy_index < params->num_phys;
       phy_index++)
  bnx2x_set_mdio_clk(bp, params->chip_id,
       params->phy[phy_index].mdio_ctrl);
}
