
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cnic_eth_dev {int num_irq; TYPE_3__* irq_arr; int drv_state; } ;
struct TYPE_5__ {scalar_t__ e1x_sb; scalar_t__ e2_sb; } ;
struct bnx2x {int flags; void* def_status_blk; TYPE_2__ cnic_sb; TYPE_1__* msix_table; struct cnic_eth_dev cnic_eth_dev; } ;
struct TYPE_6__ {int status_blk_num2; int status_blk_num; void* status_blk; int irq_flags; int vector; } ;
struct TYPE_4__ {int vector; } ;


 int CHIP_IS_E1x (struct bnx2x*) ;
 int CNIC_DRV_STATE_USING_MSIX ;
 int CNIC_IRQ_FL_MSIX ;
 int DEF_SB_ID ;
 int DEF_SB_IGU_ID ;
 int USING_MSIX_FLAG ;
 int bnx2x_cnic_fw_sb_id (struct bnx2x*) ;
 int bnx2x_cnic_igu_sb_id (struct bnx2x*) ;

void bnx2x_setup_cnic_irq_info(struct bnx2x *bp)
{
 struct cnic_eth_dev *cp = &bp->cnic_eth_dev;

 if (bp->flags & USING_MSIX_FLAG) {
  cp->drv_state |= CNIC_DRV_STATE_USING_MSIX;
  cp->irq_arr[0].irq_flags |= CNIC_IRQ_FL_MSIX;
  cp->irq_arr[0].vector = bp->msix_table[1].vector;
 } else {
  cp->drv_state &= ~CNIC_DRV_STATE_USING_MSIX;
  cp->irq_arr[0].irq_flags &= ~CNIC_IRQ_FL_MSIX;
 }
 if (!CHIP_IS_E1x(bp))
  cp->irq_arr[0].status_blk = (void *)bp->cnic_sb.e2_sb;
 else
  cp->irq_arr[0].status_blk = (void *)bp->cnic_sb.e1x_sb;

 cp->irq_arr[0].status_blk_num = bnx2x_cnic_fw_sb_id(bp);
 cp->irq_arr[0].status_blk_num2 = bnx2x_cnic_igu_sb_id(bp);
 cp->irq_arr[1].status_blk = bp->def_status_blk;
 cp->irq_arr[1].status_blk_num = DEF_SB_ID;
 cp->irq_arr[1].status_blk_num2 = DEF_SB_IGU_ID;

 cp->num_irq = 2;
}
