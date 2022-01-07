
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {TYPE_1__* reg; } ;
struct TYPE_2__ {int ctrl_status; int * mailbox; } ;


 int CSR_INTR_RISC ;
 int readl (int *) ;
 int set_rmask (int ) ;
 int writel (int ,int *) ;

void qla4xxx_queue_mbox_cmd(struct scsi_qla_host *ha, uint32_t *mbx_cmd,
       int in_count)
{
 int i;


 for (i = 1; i < in_count; i++)
  writel(mbx_cmd[i], &ha->reg->mailbox[i]);


 writel(mbx_cmd[0], &ha->reg->mailbox[0]);
 readl(&ha->reg->mailbox[0]);
 writel(set_rmask(CSR_INTR_RISC), &ha->reg->ctrl_status);
 readl(&ha->reg->ctrl_status);
}
