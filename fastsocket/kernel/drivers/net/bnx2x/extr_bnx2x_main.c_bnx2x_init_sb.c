
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hc_status_block_sm {int dummy; } ;
struct TYPE_5__ {void* lo; void* hi; } ;
struct TYPE_4__ {int vf_id; int vf_valid; void* vnic_id; void* pf_id; } ;
struct TYPE_6__ {int same_igu_sb_1b; struct hc_status_block_sm* state_machine; TYPE_2__ host_sb_addr; TYPE_1__ p_func; void* state; } ;
struct hc_status_block_data_e2 {int index_data; TYPE_3__ common; } ;
struct hc_status_block_data_e1x {int index_data; TYPE_3__ common; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 void* BP_FUNC (struct bnx2x*) ;
 void* BP_VN (struct bnx2x*) ;
 scalar_t__ CHIP_INT_MODE_IS_BC (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int DP (int ,char*,int) ;
 int HC_SEG_ACCESS_NORM ;
 int IGU_SEG_ACCESS_NORM ;
 int NETIF_MSG_IFUP ;
 void* SB_ENABLED ;
 size_t SM_RX_ID ;
 size_t SM_TX_ID ;
 void* U64_HI (int ) ;
 void* U64_LO (int ) ;
 int bnx2x_map_sb_state_machines (int ) ;
 int bnx2x_setup_ndsb_state_machine (struct hc_status_block_sm*,int,int) ;
 int bnx2x_wr_fp_sb_data (struct bnx2x*,int,int *,int) ;
 int bnx2x_zero_fp_sb (struct bnx2x*,int) ;
 int memset (struct hc_status_block_data_e2*,int ,int) ;

void bnx2x_init_sb(struct bnx2x *bp, dma_addr_t mapping, int vfid,
     u8 vf_valid, int fw_sb_id, int igu_sb_id)
{
 int igu_seg_id;

 struct hc_status_block_data_e2 sb_data_e2;
 struct hc_status_block_data_e1x sb_data_e1x;
 struct hc_status_block_sm *hc_sm_p;
 int data_size;
 u32 *sb_data_p;

 if (CHIP_INT_MODE_IS_BC(bp))
  igu_seg_id = HC_SEG_ACCESS_NORM;
 else
  igu_seg_id = IGU_SEG_ACCESS_NORM;

 bnx2x_zero_fp_sb(bp, fw_sb_id);

 if (!CHIP_IS_E1x(bp)) {
  memset(&sb_data_e2, 0, sizeof(struct hc_status_block_data_e2));
  sb_data_e2.common.state = SB_ENABLED;
  sb_data_e2.common.p_func.pf_id = BP_FUNC(bp);
  sb_data_e2.common.p_func.vf_id = vfid;
  sb_data_e2.common.p_func.vf_valid = vf_valid;
  sb_data_e2.common.p_func.vnic_id = BP_VN(bp);
  sb_data_e2.common.same_igu_sb_1b = 1;
  sb_data_e2.common.host_sb_addr.hi = U64_HI(mapping);
  sb_data_e2.common.host_sb_addr.lo = U64_LO(mapping);
  hc_sm_p = sb_data_e2.common.state_machine;
  sb_data_p = (u32 *)&sb_data_e2;
  data_size = sizeof(struct hc_status_block_data_e2)/sizeof(u32);
  bnx2x_map_sb_state_machines(sb_data_e2.index_data);
 } else {
  memset(&sb_data_e1x, 0,
         sizeof(struct hc_status_block_data_e1x));
  sb_data_e1x.common.state = SB_ENABLED;
  sb_data_e1x.common.p_func.pf_id = BP_FUNC(bp);
  sb_data_e1x.common.p_func.vf_id = 0xff;
  sb_data_e1x.common.p_func.vf_valid = 0;
  sb_data_e1x.common.p_func.vnic_id = BP_VN(bp);
  sb_data_e1x.common.same_igu_sb_1b = 1;
  sb_data_e1x.common.host_sb_addr.hi = U64_HI(mapping);
  sb_data_e1x.common.host_sb_addr.lo = U64_LO(mapping);
  hc_sm_p = sb_data_e1x.common.state_machine;
  sb_data_p = (u32 *)&sb_data_e1x;
  data_size = sizeof(struct hc_status_block_data_e1x)/sizeof(u32);
  bnx2x_map_sb_state_machines(sb_data_e1x.index_data);
 }

 bnx2x_setup_ndsb_state_machine(&hc_sm_p[SM_RX_ID],
           igu_sb_id, igu_seg_id);
 bnx2x_setup_ndsb_state_machine(&hc_sm_p[SM_TX_ID],
           igu_sb_id, igu_seg_id);

 DP(NETIF_MSG_IFUP, "Init FW SB %d\n", fw_sb_id);


 bnx2x_wr_fp_sb_data(bp, fw_sb_id, sb_data_p, data_size);
}
