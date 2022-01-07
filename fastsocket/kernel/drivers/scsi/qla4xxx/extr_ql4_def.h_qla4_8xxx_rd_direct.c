
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct scsi_qla_host {int * reg_tbl; TYPE_1__* isp_ops; } ;
struct TYPE_2__ {int (* rd_reg_direct ) (struct scsi_qla_host*,int ) ;} ;


 int stub1 (struct scsi_qla_host*,int ) ;

__attribute__((used)) static inline int qla4_8xxx_rd_direct(struct scsi_qla_host *ha,
          const uint32_t crb_reg)
{
 return ha->isp_ops->rd_reg_direct(ha, ha->reg_tbl[crb_reg]);
}
