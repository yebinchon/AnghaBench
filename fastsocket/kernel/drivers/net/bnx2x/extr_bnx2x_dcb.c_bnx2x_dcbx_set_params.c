
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dev; int sp_rtnl_task; int sp_rtnl_state; int dcbx_error; int dcbx_local_feat; } ;





 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_DCB ;
 int BNX2X_SP_RTNL_TX_RESUME ;
 int BNX2X_SP_RTNL_TX_STOP ;
 int DCB_CMD_CEE_GET ;
 int DP (int ,char*) ;
 int DRV_FLAGS_DCB_CONFIGURED ;
 int DRV_MSG_CODE_DCBX_PMF_DRV_OK ;
 int IS_MF (struct bnx2x*) ;
 int RTM_GETDCB ;
 int bnx2x_dcbnl_update_applist (struct bnx2x*,int) ;
 int bnx2x_dcbx_read_shmem_neg_results (struct bnx2x*) ;
 int bnx2x_dcbx_read_shmem_remote_mib (struct bnx2x*) ;
 int bnx2x_dcbx_update_ets_params (struct bnx2x*) ;
 int bnx2x_dcbx_update_tc_mapping (struct bnx2x*) ;
 int bnx2x_dump_dcbx_drv_param (struct bnx2x*,int *,int ) ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;
 int bnx2x_get_dcbx_drv_param (struct bnx2x*,int *,int ) ;
 int bnx2x_link_sync_notify (struct bnx2x*) ;
 int bnx2x_pfc_set_pfc (struct bnx2x*) ;
 int bnx2x_set_local_cmng (struct bnx2x*) ;
 int bnx2x_update_drv_flags (struct bnx2x*,int,int) ;
 int dcbnl_cee_notify (int ,int ,int ,int ,int ) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;

void bnx2x_dcbx_set_params(struct bnx2x *bp, u32 state)
{
 switch (state) {
 case 130:
  {
   DP(BNX2X_MSG_DCB, "BNX2X_DCBX_STATE_NEG_RECEIVED\n");
   if (bnx2x_dcbx_read_shmem_neg_results(bp))
    return;

   bnx2x_dump_dcbx_drv_param(bp, &bp->dcbx_local_feat,
        bp->dcbx_error);

   bnx2x_get_dcbx_drv_param(bp, &bp->dcbx_local_feat,
       bp->dcbx_error);


   bnx2x_update_drv_flags(bp,
            1 << DRV_FLAGS_DCB_CONFIGURED,
            1);
   bnx2x_dcbx_update_tc_mapping(bp);





   if (IS_MF(bp))
    bnx2x_link_sync_notify(bp);

   set_bit(BNX2X_SP_RTNL_TX_STOP, &bp->sp_rtnl_state);

   schedule_delayed_work(&bp->sp_rtnl_task, 0);

   return;
  }
 case 129:
  DP(BNX2X_MSG_DCB, "BNX2X_DCBX_STATE_TX_PAUSED\n");
  bnx2x_pfc_set_pfc(bp);

  bnx2x_dcbx_update_ets_params(bp);


  bnx2x_set_local_cmng(bp);

  set_bit(BNX2X_SP_RTNL_TX_RESUME, &bp->sp_rtnl_state);

  schedule_delayed_work(&bp->sp_rtnl_task, 0);

  return;
 case 128:
  DP(BNX2X_MSG_DCB, "BNX2X_DCBX_STATE_TX_RELEASED\n");
  bnx2x_fw_command(bp, DRV_MSG_CODE_DCBX_PMF_DRV_OK, 0);






  return;
 default:
  BNX2X_ERR("Unknown DCBX_STATE\n");
 }
}
