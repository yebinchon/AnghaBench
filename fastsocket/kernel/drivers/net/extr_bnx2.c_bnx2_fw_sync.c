
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int fw_wr_seq; } ;


 int BNX2_DRV_MB ;
 int BNX2_DRV_MSG_CODE ;
 int BNX2_DRV_MSG_CODE_FW_TIMEOUT ;
 int BNX2_DRV_MSG_DATA ;
 int BNX2_DRV_MSG_DATA_WAIT0 ;
 int BNX2_DRV_MSG_SEQ ;
 int BNX2_FW_ACK_TIME_OUT_MS ;
 int BNX2_FW_MB ;
 int BNX2_FW_MSG_ACK ;
 int BNX2_FW_MSG_STATUS_MASK ;
 int BNX2_FW_MSG_STATUS_OK ;
 int EBUSY ;
 int EIO ;
 int bnx2_dump_mcp_state (struct bnx2*) ;
 int bnx2_shmem_rd (struct bnx2*,int ) ;
 int bnx2_shmem_wr (struct bnx2*,int ,int) ;
 int msleep (int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int
bnx2_fw_sync(struct bnx2 *bp, u32 msg_data, int ack, int silent)
{
 int i;
 u32 val;

 bp->fw_wr_seq++;
 msg_data |= bp->fw_wr_seq;

 bnx2_shmem_wr(bp, BNX2_DRV_MB, msg_data);

 if (!ack)
  return 0;


 for (i = 0; i < (BNX2_FW_ACK_TIME_OUT_MS / 10); i++) {
  msleep(10);

  val = bnx2_shmem_rd(bp, BNX2_FW_MB);

  if ((val & BNX2_FW_MSG_ACK) == (msg_data & BNX2_DRV_MSG_SEQ))
   break;
 }
 if ((msg_data & BNX2_DRV_MSG_DATA) == BNX2_DRV_MSG_DATA_WAIT0)
  return 0;


 if ((val & BNX2_FW_MSG_ACK) != (msg_data & BNX2_DRV_MSG_SEQ)) {
  msg_data &= ~BNX2_DRV_MSG_CODE;
  msg_data |= BNX2_DRV_MSG_CODE_FW_TIMEOUT;

  bnx2_shmem_wr(bp, BNX2_DRV_MB, msg_data);
  if (!silent) {
   pr_err("fw sync timeout, reset code = %x\n", msg_data);
   bnx2_dump_mcp_state(bp);
  }

  return -EBUSY;
 }

 if ((val & BNX2_FW_MSG_STATUS_MASK) != BNX2_FW_MSG_STATUS_OK)
  return -EIO;

 return 0;
}
