
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct req_que {scalar_t__ ring; } ;
struct qla_hw_data {void* fcoe_reset_timeout; void* fcoe_dev_init_timeout; TYPE_1__* isp_ops; struct req_que** req_q_map; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_6__ {int (* read_optrom ) (TYPE_2__*,int *,int ,int) ;} ;


 int IS_QLA82XX (struct qla_hw_data*) ;
 int QLA82XX_IDC_PARAM_ADDR ;
 void* QLA82XX_ROM_DEV_INIT_TIMEOUT ;
 void* QLA82XX_ROM_DRV_RESET_ACK_TIMEOUT ;
 scalar_t__ __constant_cpu_to_le32 (int) ;
 void* le32_to_cpu (scalar_t__) ;
 int ql_dbg (int ,TYPE_2__*,int,char*,void*,void*) ;
 int ql_dbg_init ;
 int stub1 (TYPE_2__*,int *,int ,int) ;

__attribute__((used)) static void
qla2xxx_get_idc_param(scsi_qla_host_t *vha)
{

 uint32_t *wptr;
 struct qla_hw_data *ha = vha->hw;
 struct req_que *req = ha->req_q_map[0];

 if (!IS_QLA82XX(ha))
  return;

 wptr = (uint32_t *)req->ring;
 ha->isp_ops->read_optrom(vha, (uint8_t *)req->ring,
  0x003e885c , 8);

 if (*wptr == __constant_cpu_to_le32(0xffffffff)) {
  ha->fcoe_dev_init_timeout = QLA82XX_ROM_DEV_INIT_TIMEOUT;
  ha->fcoe_reset_timeout = QLA82XX_ROM_DRV_RESET_ACK_TIMEOUT;
 } else {
  ha->fcoe_dev_init_timeout = le32_to_cpu(*wptr++);
  ha->fcoe_reset_timeout = le32_to_cpu(*wptr);
 }
 ql_dbg(ql_dbg_init, vha, 0x004e,
     "fcoe_dev_init_timeout=%d "
     "fcoe_reset_timeout=%d.\n", ha->fcoe_dev_init_timeout,
     ha->fcoe_reset_timeout);
 return;
}
