
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* reg; int response_out; } ;
struct TYPE_2__ {int rsp_q_out; } ;


 int readl (int *) ;
 int writel (int ,int *) ;

void qla4xxx_complete_iocb(struct scsi_qla_host *ha)
{
 writel(ha->response_out, &ha->reg->rsp_q_out);
 readl(&ha->reg->rsp_q_out);
}
