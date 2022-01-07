
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_16__ {int domain; int area; int al_pa; int rsvd_1; } ;
struct TYPE_17__ {TYPE_3__ b; } ;
struct TYPE_18__ {TYPE_4__ d_id; } ;
typedef TYPE_5__ sw_info_t ;
struct TYPE_14__ {int * param; } ;
struct TYPE_15__ {int* gid_data; TYPE_1__ cmd; } ;
struct sns_cmd_pkt {TYPE_2__ p; } ;
struct qla_hw_data {int max_fibre_devices; int sns_cmd_dma; } ;
struct TYPE_19__ {struct qla_hw_data* hw; } ;
typedef TYPE_6__ scsi_qla_host_t ;


 int BIT_7 ;
 int GID_PT_CMD ;
 int GID_PT_SNS_CMD_SIZE ;
 int GID_PT_SNS_SCMD_LEN ;
 int NS_NX_PORT_TYPE ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int ql_dbg (scalar_t__,TYPE_6__*,int,char*,...) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_disc ;
 int ql_dump_buffer (scalar_t__,TYPE_6__*,int,int*,int) ;
 int qla2x00_gid_pt_rsp_size (TYPE_6__*) ;
 struct sns_cmd_pkt* qla2x00_prep_sns_cmd (TYPE_6__*,int ,int ,int) ;
 int qla2x00_send_sns (TYPE_6__*,int ,int,int) ;

__attribute__((used)) static int
qla2x00_sns_gid_pt(scsi_qla_host_t *vha, sw_info_t *list)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;
 uint16_t i;
 uint8_t *entry;
 struct sns_cmd_pkt *sns_cmd;
 uint16_t gid_pt_sns_data_size;

 gid_pt_sns_data_size = qla2x00_gid_pt_rsp_size(vha);



 sns_cmd = qla2x00_prep_sns_cmd(vha, GID_PT_CMD, GID_PT_SNS_SCMD_LEN,
     gid_pt_sns_data_size);


 sns_cmd->p.cmd.param[0] = NS_NX_PORT_TYPE;


 rval = qla2x00_send_sns(vha, ha->sns_cmd_dma, GID_PT_SNS_CMD_SIZE / 2,
     sizeof(struct sns_cmd_pkt));
 if (rval != QLA_SUCCESS) {

  ql_dbg(ql_dbg_disc, vha, 0x206d,
      "GID_PT Send SNS failed (%d).\n", rval);
 } else if (sns_cmd->p.gid_data[8] != 0x80 ||
     sns_cmd->p.gid_data[9] != 0x02) {
  ql_dbg(ql_dbg_disc, vha, 0x202f,
      "GID_PT failed, rejected request, gid_rsp:\n");
  ql_dump_buffer(ql_dbg_disc + ql_dbg_buffer, vha, 0x2081,
      sns_cmd->p.gid_data, 16);
  rval = QLA_FUNCTION_FAILED;
 } else {

  for (i = 0; i < ha->max_fibre_devices; i++) {
   entry = &sns_cmd->p.gid_data[(i * 4) + 16];
   list[i].d_id.b.domain = entry[1];
   list[i].d_id.b.area = entry[2];
   list[i].d_id.b.al_pa = entry[3];


   if (entry[0] & BIT_7) {
    list[i].d_id.b.rsvd_1 = entry[0];
    break;
   }
  }







  if (i == ha->max_fibre_devices)
   rval = QLA_FUNCTION_FAILED;
 }

 return (rval);
}
