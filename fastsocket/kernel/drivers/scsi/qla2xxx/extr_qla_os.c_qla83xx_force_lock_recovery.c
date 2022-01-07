
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int portnum; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int IDC_LOCK_RECOVERY_STAGE1 ;
 int IDC_LOCK_RECOVERY_STAGE2 ;
 int QLA83XX_DRIVER_LOCKID ;
 int QLA83XX_DRIVER_UNLOCK ;
 int QLA83XX_IDC_LOCK_RECOVERY ;
 int QLA_SUCCESS ;
 int msleep (int) ;
 int ql_dbg (int ,TYPE_1__*,int,char*) ;
 int ql_dbg_p3p ;
 int qla83xx_rd_reg (TYPE_1__*,int ,int*) ;
 int qla83xx_wr_reg (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
qla83xx_force_lock_recovery(scsi_qla_host_t *base_vha)
{
 int rval;
 uint32_t data;
 uint32_t idc_lck_rcvry_stage_mask = 0x3;
 uint32_t idc_lck_rcvry_owner_mask = 0x3c;
 struct qla_hw_data *ha = base_vha->hw;
 ql_dbg(ql_dbg_p3p, base_vha, 0xb086,
     "Trying force recovery of the IDC lock.\n");

 rval = qla83xx_rd_reg(base_vha, QLA83XX_IDC_LOCK_RECOVERY, &data);
 if (rval)
  return rval;

 if ((data & idc_lck_rcvry_stage_mask) > 0) {
  return QLA_SUCCESS;
 } else {
  data = (IDC_LOCK_RECOVERY_STAGE1) | (ha->portnum << 2);
  rval = qla83xx_wr_reg(base_vha, QLA83XX_IDC_LOCK_RECOVERY,
      data);
  if (rval)
   return rval;

  msleep(200);

  rval = qla83xx_rd_reg(base_vha, QLA83XX_IDC_LOCK_RECOVERY,
      &data);
  if (rval)
   return rval;

  if (((data & idc_lck_rcvry_owner_mask) >> 2) == ha->portnum) {
   data &= (IDC_LOCK_RECOVERY_STAGE2 |
     ~(idc_lck_rcvry_stage_mask));
   rval = qla83xx_wr_reg(base_vha,
       QLA83XX_IDC_LOCK_RECOVERY, data);
   if (rval)
    return rval;


   rval = qla83xx_rd_reg(base_vha, QLA83XX_DRIVER_UNLOCK,
       &data);
   if (rval)
    return rval;

   rval = qla83xx_wr_reg(base_vha, QLA83XX_DRIVER_LOCKID,
       0xff);
   if (rval)
    return rval;

   rval = qla83xx_wr_reg(base_vha,
       QLA83XX_IDC_LOCK_RECOVERY, 0x0);
   if (rval)
    return rval;
  } else
   return QLA_SUCCESS;
 }

 return rval;
}
