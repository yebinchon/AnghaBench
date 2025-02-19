
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int func_num; int flags; } ;


 int AF_EEH_BUSY ;
 int QLA8XXX_CRB_DRV_ACTIVE ;
 int QLA8XXX_CRB_DRV_STATE ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;
 int qla4_8xxx_rd_direct (struct scsi_qla_host*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

inline int qla4_8xxx_need_reset(struct scsi_qla_host *ha)
{
 uint32_t drv_state, drv_active;
 int rval;

 drv_active = qla4_8xxx_rd_direct(ha, QLA8XXX_CRB_DRV_ACTIVE);
 drv_state = qla4_8xxx_rd_direct(ha, QLA8XXX_CRB_DRV_STATE);






 if (is_qla8032(ha))
  rval = drv_state & (1 << ha->func_num);
 else
  rval = drv_state & (1 << (ha->func_num * 4));

 if ((test_bit(AF_EEH_BUSY, &ha->flags)) && drv_active)
  rval = 1;

 return rval;
}
