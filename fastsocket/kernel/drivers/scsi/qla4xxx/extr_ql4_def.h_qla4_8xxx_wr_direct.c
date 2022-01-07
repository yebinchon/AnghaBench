
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct scsi_qla_host {int * reg_tbl; TYPE_1__* isp_ops; } ;
struct TYPE_2__ {int (* wr_reg_direct ) (struct scsi_qla_host*,int ,size_t const) ;} ;


 int stub1 (struct scsi_qla_host*,int ,size_t const) ;

__attribute__((used)) static inline void qla4_8xxx_wr_direct(struct scsi_qla_host *ha,
           const uint32_t crb_reg,
           const uint32_t value)
{
 ha->isp_ops->wr_reg_direct(ha, ha->reg_tbl[crb_reg], value);
}
