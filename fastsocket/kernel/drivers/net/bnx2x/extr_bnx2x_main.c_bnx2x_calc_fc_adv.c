
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {int* advertising; } ;
struct TYPE_3__ {int ieee_fc; } ;
struct bnx2x {TYPE_2__ port; TYPE_1__ link_vars; } ;


 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;


 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_MASK ;

 size_t bnx2x_get_link_cfg_idx (struct bnx2x*) ;

void bnx2x_calc_fc_adv(struct bnx2x *bp)
{
 u8 cfg_idx = bnx2x_get_link_cfg_idx(bp);
 switch (bp->link_vars.ieee_fc &
  MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_MASK) {
 case 128:
  bp->port.advertising[cfg_idx] &= ~(ADVERTISED_Asym_Pause |
         ADVERTISED_Pause);
  break;

 case 129:
  bp->port.advertising[cfg_idx] |= (ADVERTISED_Asym_Pause |
        ADVERTISED_Pause);
  break;

 case 130:
  bp->port.advertising[cfg_idx] |= ADVERTISED_Asym_Pause;
  break;

 default:
  bp->port.advertising[cfg_idx] &= ~(ADVERTISED_Asym_Pause |
         ADVERTISED_Pause);
  break;
 }
}
