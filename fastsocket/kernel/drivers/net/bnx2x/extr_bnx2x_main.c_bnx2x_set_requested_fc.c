
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int req_fc_auto_adv; } ;
struct bnx2x {TYPE_2__ link_params; TYPE_1__* dev; } ;
struct TYPE_3__ {int mtu; } ;


 int BNX2X_FLOW_CTRL_BOTH ;
 int BNX2X_FLOW_CTRL_TX ;
 scalar_t__ CHIP_IS_E1x (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_set_requested_fc(struct bnx2x *bp)
{




 if (CHIP_IS_E1x(bp) && (bp->dev->mtu > 5000))
  bp->link_params.req_fc_auto_adv = BNX2X_FLOW_CTRL_TX;
 else
  bp->link_params.req_fc_auto_adv = BNX2X_FLOW_CTRL_BOTH;
}
