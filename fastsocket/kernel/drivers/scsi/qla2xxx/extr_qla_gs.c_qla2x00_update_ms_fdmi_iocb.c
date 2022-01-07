
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {TYPE_2__* ms_iocb; } ;
struct ct_entry_24xx {void* cmd_byte_count; void* dseg_0_len; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;
struct TYPE_6__ {void* req_bytecount; void* dseg_req_length; } ;
typedef TYPE_2__ ms_iocb_entry_t ;


 scalar_t__ IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static inline ms_iocb_entry_t *
qla2x00_update_ms_fdmi_iocb(scsi_qla_host_t *vha, uint32_t req_size)
{
 struct qla_hw_data *ha = vha->hw;
 ms_iocb_entry_t *ms_pkt = ha->ms_iocb;
 struct ct_entry_24xx *ct_pkt = (struct ct_entry_24xx *)ha->ms_iocb;

 if (IS_FWI2_CAPABLE(ha)) {
  ct_pkt->cmd_byte_count = cpu_to_le32(req_size);
  ct_pkt->dseg_0_len = ct_pkt->cmd_byte_count;
 } else {
  ms_pkt->req_bytecount = cpu_to_le32(req_size);
  ms_pkt->dseg_req_length = ms_pkt->req_bytecount;
 }

 return ms_pkt;
}
