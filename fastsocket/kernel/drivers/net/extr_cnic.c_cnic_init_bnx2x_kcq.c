
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int * running_index; int * index_values; } ;
struct host_hc_status_block_e2 {TYPE_4__ sb; } ;
struct host_hc_status_block_e1x {TYPE_4__ sb; } ;
struct TYPE_7__ {int * status_idx_ptr; int * hw_prod_idx_ptr; scalar_t__ sw_prod_idx; scalar_t__ io_addr; } ;
struct TYPE_6__ {struct host_hc_status_block_e2* gen; } ;
struct TYPE_5__ {int * status_idx_ptr; int * hw_prod_idx_ptr; scalar_t__ sw_prod_idx; scalar_t__ io_addr; } ;
struct cnic_local {TYPE_3__ kcq2; TYPE_2__ status_blk; TYPE_1__ kcq1; int pfid; } ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ BAR_USTRORM_INTMEM ;
 scalar_t__ BNX2X_CHIP_IS_E2_PLUS (struct bnx2x*) ;
 scalar_t__ CSTORM_ISCSI_EQ_PROD_OFFSET (int ,int ) ;
 size_t HC_INDEX_FCOE_EQ_CONS ;
 size_t HC_INDEX_ISCSI_EQ_CONS ;
 size_t SM_RX_ID ;
 scalar_t__ USTORM_FCOE_EQ_PROD_OFFSET (int ) ;
 struct bnx2x* netdev_priv (int ) ;

__attribute__((used)) static void cnic_init_bnx2x_kcq(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 u32 pfid = cp->pfid;

 cp->kcq1.io_addr = BAR_CSTRORM_INTMEM +
      CSTORM_ISCSI_EQ_PROD_OFFSET(pfid, 0);
 cp->kcq1.sw_prod_idx = 0;

 if (BNX2X_CHIP_IS_E2_PLUS(bp)) {
  struct host_hc_status_block_e2 *sb = cp->status_blk.gen;

  cp->kcq1.hw_prod_idx_ptr =
   &sb->sb.index_values[HC_INDEX_ISCSI_EQ_CONS];
  cp->kcq1.status_idx_ptr =
   &sb->sb.running_index[SM_RX_ID];
 } else {
  struct host_hc_status_block_e1x *sb = cp->status_blk.gen;

  cp->kcq1.hw_prod_idx_ptr =
   &sb->sb.index_values[HC_INDEX_ISCSI_EQ_CONS];
  cp->kcq1.status_idx_ptr =
   &sb->sb.running_index[SM_RX_ID];
 }

 if (BNX2X_CHIP_IS_E2_PLUS(bp)) {
  struct host_hc_status_block_e2 *sb = cp->status_blk.gen;

  cp->kcq2.io_addr = BAR_USTRORM_INTMEM +
     USTORM_FCOE_EQ_PROD_OFFSET(pfid);
  cp->kcq2.sw_prod_idx = 0;
  cp->kcq2.hw_prod_idx_ptr =
   &sb->sb.index_values[HC_INDEX_FCOE_EQ_CONS];
  cp->kcq2.status_idx_ptr =
   &sb->sb.running_index[SM_RX_ID];
 }
}
