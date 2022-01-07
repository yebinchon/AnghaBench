
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {TYPE_1__* qla4_83xx_reg; int flags; } ;
struct TYPE_2__ {int leg_int_mask; int mbox_int; } ;


 int AF_83XX_MBOX_INTR_ON ;
 int INT_ENABLE_FW_MB ;
 int readl (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void qla4_83xx_disable_mbox_intrs(struct scsi_qla_host *ha)
{
 uint32_t mb_int, ret;

 if (test_and_clear_bit(AF_83XX_MBOX_INTR_ON, &ha->flags)) {
  ret = readl(&ha->qla4_83xx_reg->mbox_int);
  mb_int = ret & ~INT_ENABLE_FW_MB;
  writel(mb_int, &ha->qla4_83xx_reg->mbox_int);
  writel(1, &ha->qla4_83xx_reg->leg_int_mask);
 }
}
