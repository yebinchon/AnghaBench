
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link_vars {int flow_ctrl; } ;
struct link_params {int feature_config_flags; scalar_t__ port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int BIGMAC_REGISTER_RX_CONTROL ;
 int BIGMAC_REGISTER_TX_CONTROL ;
 int BNX2X_FLOW_CTRL_RX ;
 int BNX2X_FLOW_CTRL_TX ;
 int FEATURE_CONFIG_PFC_ENABLED ;
 int NIG_REG_INGRESS_BMAC0_MEM ;
 int NIG_REG_INGRESS_BMAC1_MEM ;
 int REG_WR_DMAE (struct bnx2x*,int,int*,int) ;

__attribute__((used)) static void bnx2x_update_pfc_bmac1(struct link_params *params,
       struct link_vars *vars)
{
 u32 wb_data[2];
 struct bnx2x *bp = params->bp;
 u32 bmac_addr = params->port ? NIG_REG_INGRESS_BMAC1_MEM :
  NIG_REG_INGRESS_BMAC0_MEM;

 u32 val = 0x14;
 if ((!(params->feature_config_flags &
       FEATURE_CONFIG_PFC_ENABLED)) &&
  (vars->flow_ctrl & BNX2X_FLOW_CTRL_RX))

  val |= (1<<5);
 wb_data[0] = val;
 wb_data[1] = 0;
 REG_WR_DMAE(bp, bmac_addr + BIGMAC_REGISTER_RX_CONTROL, wb_data, 2);


 val = 0xc0;
 if (!(params->feature_config_flags &
       FEATURE_CONFIG_PFC_ENABLED) &&
  (vars->flow_ctrl & BNX2X_FLOW_CTRL_TX))
  val |= 0x800000;
 wb_data[0] = val;
 wb_data[1] = 0;
 REG_WR_DMAE(bp, bmac_addr + BIGMAC_REGISTER_TX_CONTROL, wb_data, 2);
}
