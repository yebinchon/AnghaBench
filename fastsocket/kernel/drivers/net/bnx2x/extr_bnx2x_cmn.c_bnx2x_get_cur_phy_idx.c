
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int num_phys; TYPE_2__* phy; } ;
struct TYPE_4__ {int link_status; scalar_t__ link_up; } ;
struct bnx2x {TYPE_3__ link_params; TYPE_1__ link_vars; } ;
struct TYPE_5__ {int supported; } ;


 int EXT_PHY1 ;
 size_t EXT_PHY2 ;
 int INT_PHY ;
 int LINK_STATUS_SERDES_LINK ;





 int SUPPORTED_FIBRE ;
 int bnx2x_phy_selection (TYPE_3__*) ;

int bnx2x_get_cur_phy_idx(struct bnx2x *bp)
{
 u32 sel_phy_idx = 0;
 if (bp->link_params.num_phys <= 1)
  return INT_PHY;

 if (bp->link_vars.link_up) {
  sel_phy_idx = EXT_PHY1;

  if ((bp->link_vars.link_status & LINK_STATUS_SERDES_LINK) &&
      (bp->link_params.phy[EXT_PHY2].supported & SUPPORTED_FIBRE))
   sel_phy_idx = EXT_PHY2;
 } else {

  switch (bnx2x_phy_selection(&bp->link_params)) {
  case 130:
  case 132:
  case 131:
         sel_phy_idx = EXT_PHY1;
         break;
  case 129:
  case 128:
         sel_phy_idx = EXT_PHY2;
         break;
  }
 }

 return sel_phy_idx;
}
