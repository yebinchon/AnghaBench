
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link_vars {int link_status; int flow_ctrl; } ;


 int BNX2X_FLOW_CTRL_BOTH ;
 int BNX2X_FLOW_CTRL_RX ;
 int BNX2X_FLOW_CTRL_TX ;
 int LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE ;
 int LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE ;

__attribute__((used)) static void bnx2x_pause_resolve(struct link_vars *vars, u32 pause_result)
{
 switch (pause_result) {
 case 0xb:
  vars->flow_ctrl = BNX2X_FLOW_CTRL_TX;
  break;

 case 0xe:
  vars->flow_ctrl = BNX2X_FLOW_CTRL_RX;
  break;

 case 0x5:
 case 0x7:
 case 0xd:
 case 0xf:
  vars->flow_ctrl = BNX2X_FLOW_CTRL_BOTH;
  break;

 default:
  break;
 }
 if (pause_result & (1<<0))
  vars->link_status |= LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE;
 if (pause_result & (1<<1))
  vars->link_status |= LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE;

}
