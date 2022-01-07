
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int tgt_mask_reg; } ;
struct scsi_qla_host {int spurious_int_count; TYPE_2__ nx_legacy_intr; int flags; TYPE_1__* qla4_82xx_reg; } ;
struct TYPE_3__ {int host_int; } ;


 int AF_INTx_ENABLED ;
 int DEBUG2 (int ) ;
 int KERN_INFO ;
 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4_82xx_wr_32 (struct scsi_qla_host*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void qla4_82xx_spurious_interrupt(struct scsi_qla_host *ha,
    uint8_t reqs_count)
{
 if (reqs_count)
  return;

 DEBUG2(ql4_printk(KERN_INFO, ha, "Spurious Interrupt\n"));
 if (is_qla8022(ha)) {
  writel(0, &ha->qla4_82xx_reg->host_int);
  if (test_bit(AF_INTx_ENABLED, &ha->flags))
   qla4_82xx_wr_32(ha, ha->nx_legacy_intr.tgt_mask_reg,
       0xfbff);
 }
 ha->spurious_int_count++;
}
