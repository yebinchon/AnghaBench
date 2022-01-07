
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_10__ {int* pg_map_arr; } ;
struct TYPE_8__ {int* pg_map_arr; } ;
struct TYPE_9__ {TYPE_3__ dma; scalar_t__ io_addr; } ;
struct cnic_local {TYPE_5__ gbl_buf_info; int status_blk_num; TYPE_4__ kcq1; int bnx2x_igu_sb_id; int fcoe_start_cid; int fcoe_cid_tbl; int iscsi_start_cid; int cid_tbl; int pfid; int func; int port_mode; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; TYPE_2__* irq_arr; int addr_drv_info_to_mcp; } ;
struct cnic_dev {int max_fcoe_conn; int stats_addr; int netdev; struct cnic_local* cnic_priv; } ;
struct TYPE_6__ {int chip_port_mode; } ;
struct bnx2x {int pf_num; int pfid; TYPE_1__ common; } ;
struct TYPE_7__ {int status_blk_num2; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ BAR_TSTRORM_INTMEM ;
 scalar_t__ BAR_USTRORM_INTMEM ;
 scalar_t__ BNX2X_CHIP_IS_E2_PLUS (struct bnx2x*) ;
 int CNIC_DRV_STATE_HANDLES_IRQ ;
 int CNIC_FUNC (struct cnic_local*) ;
 int CNIC_WR (struct cnic_dev*,scalar_t__,int) ;
 int CNIC_WR16 (struct cnic_dev*,scalar_t__,int ) ;
 int CNIC_WR8 (struct cnic_dev*,scalar_t__,int) ;
 scalar_t__ CSTORM_ISCSI_EQ_CONS_OFFSET (int ,int ) ;
 scalar_t__ CSTORM_ISCSI_EQ_NEXT_EQE_ADDR_OFFSET (int ,int ) ;
 scalar_t__ CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_OFFSET (int ,int ) ;
 scalar_t__ CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_VALID_OFFSET (int ,int ) ;
 scalar_t__ CSTORM_ISCSI_EQ_SB_INDEX_OFFSET (int ,int ) ;
 scalar_t__ CSTORM_ISCSI_EQ_SB_NUM_OFFSET (int ,int ) ;
 int DEF_RCV_BUF ;
 int ENOMEM ;
 int HC_INDEX_ISCSI_EQ_CONS ;
 int MAX_ISCSI_TBL_SZ ;
 int MAX_KCQ_IDX ;
 scalar_t__ TSTORM_ISCSI_TCP_LOCAL_ADV_WND_OFFSET (int ) ;
 scalar_t__ USTORM_ISCSI_GLOBAL_BUF_PHYS_ADDR_OFFSET (int ) ;
 int cnic_init_bnx2x_irq (struct cnic_dev*) ;
 int cnic_init_bnx2x_kcq (struct cnic_dev*) ;
 int cnic_init_id_tbl (int *,int ,int ,int ) ;
 int cnic_setup_bnx2x_context (struct cnic_dev*) ;
 struct bnx2x* netdev_priv (int ) ;

__attribute__((used)) static int cnic_start_bnx2x_hw(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 struct cnic_eth_dev *ethdev = cp->ethdev;
 int func, ret;
 u32 pfid;

 dev->stats_addr = ethdev->addr_drv_info_to_mcp;
 cp->port_mode = bp->common.chip_port_mode;
 cp->pfid = bp->pfid;
 cp->func = bp->pf_num;

 func = CNIC_FUNC(cp);
 pfid = cp->pfid;

 ret = cnic_init_id_tbl(&cp->cid_tbl, MAX_ISCSI_TBL_SZ,
          cp->iscsi_start_cid, 0);

 if (ret)
  return -ENOMEM;

 if (BNX2X_CHIP_IS_E2_PLUS(bp)) {
  ret = cnic_init_id_tbl(&cp->fcoe_cid_tbl, dev->max_fcoe_conn,
     cp->fcoe_start_cid, 0);

  if (ret)
   return -ENOMEM;
 }

 cp->bnx2x_igu_sb_id = ethdev->irq_arr[0].status_blk_num2;

 cnic_init_bnx2x_kcq(dev);


 CNIC_WR16(dev, cp->kcq1.io_addr, MAX_KCQ_IDX);
 CNIC_WR(dev, BAR_CSTRORM_INTMEM +
  CSTORM_ISCSI_EQ_CONS_OFFSET(pfid, 0), 0);
 CNIC_WR(dev, BAR_CSTRORM_INTMEM +
  CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_OFFSET(pfid, 0),
  cp->kcq1.dma.pg_map_arr[1] & 0xffffffff);
 CNIC_WR(dev, BAR_CSTRORM_INTMEM +
  CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_OFFSET(pfid, 0) + 4,
  (u64) cp->kcq1.dma.pg_map_arr[1] >> 32);
 CNIC_WR(dev, BAR_CSTRORM_INTMEM +
  CSTORM_ISCSI_EQ_NEXT_EQE_ADDR_OFFSET(pfid, 0),
  cp->kcq1.dma.pg_map_arr[0] & 0xffffffff);
 CNIC_WR(dev, BAR_CSTRORM_INTMEM +
  CSTORM_ISCSI_EQ_NEXT_EQE_ADDR_OFFSET(pfid, 0) + 4,
  (u64) cp->kcq1.dma.pg_map_arr[0] >> 32);
 CNIC_WR8(dev, BAR_CSTRORM_INTMEM +
  CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_VALID_OFFSET(pfid, 0), 1);
 CNIC_WR16(dev, BAR_CSTRORM_INTMEM +
  CSTORM_ISCSI_EQ_SB_NUM_OFFSET(pfid, 0), cp->status_blk_num);
 CNIC_WR8(dev, BAR_CSTRORM_INTMEM +
  CSTORM_ISCSI_EQ_SB_INDEX_OFFSET(pfid, 0),
  HC_INDEX_ISCSI_EQ_CONS);

 CNIC_WR(dev, BAR_USTRORM_INTMEM +
  USTORM_ISCSI_GLOBAL_BUF_PHYS_ADDR_OFFSET(pfid),
  cp->gbl_buf_info.pg_map_arr[0] & 0xffffffff);
 CNIC_WR(dev, BAR_USTRORM_INTMEM +
  USTORM_ISCSI_GLOBAL_BUF_PHYS_ADDR_OFFSET(pfid) + 4,
  (u64) cp->gbl_buf_info.pg_map_arr[0] >> 32);

 CNIC_WR(dev, BAR_TSTRORM_INTMEM +
  TSTORM_ISCSI_TCP_LOCAL_ADV_WND_OFFSET(pfid), DEF_RCV_BUF);

 cnic_setup_bnx2x_context(dev);

 ret = cnic_init_bnx2x_irq(dev);
 if (ret)
  return ret;

 ethdev->drv_state |= CNIC_DRV_STATE_HANDLES_IRQ;
 return 0;
}
