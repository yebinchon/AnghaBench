
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int func_num; } ;


 int QLA8XXX_CRB_DRV_STATE ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;
 int qla4_8xxx_rd_direct (struct scsi_qla_host*,int ) ;
 int qla4_8xxx_wr_direct (struct scsi_qla_host*,int ,int) ;

__attribute__((used)) static inline void
qla4_8xxx_set_qsnt_ready(struct scsi_qla_host *ha)
{
 uint32_t qsnt_state;

 qsnt_state = qla4_8xxx_rd_direct(ha, QLA8XXX_CRB_DRV_STATE);






 if (is_qla8032(ha))
  qsnt_state |= (1 << ha->func_num);
 else
  qsnt_state |= (2 << (ha->func_num * 4));

 qla4_8xxx_wr_direct(ha, QLA8XXX_CRB_DRV_STATE, qsnt_state);
}
