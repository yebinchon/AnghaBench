
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_14__ {int data; } ;
typedef TYPE_1__ sts_cont_entry_t ;
struct scsi_qla_host {int dummy; } ;
struct scsi_cmnd {int result; } ;
struct rsp_que {TYPE_2__* status_srb; struct qla_hw_data* hw; } ;
struct qla_hw_data {int pdev; } ;
struct TYPE_15__ {int (* done ) (struct qla_hw_data*,TYPE_2__*,int ) ;} ;
typedef TYPE_2__ srb_t ;


 int GET_CMD_SENSE_LEN (TYPE_2__*) ;
 int* GET_CMD_SENSE_PTR (TYPE_2__*) ;
 struct scsi_cmnd* GET_CMD_SP (TYPE_2__*) ;
 int GET_FW_SENSE_LEN (TYPE_2__*) ;
 int SET_CMD_SENSE_LEN (TYPE_2__*,int) ;
 int SET_CMD_SENSE_PTR (TYPE_2__*,int*) ;
 int SET_FW_SENSE_LEN (TYPE_2__*,int) ;
 int memcpy (int*,int ,int) ;
 struct scsi_qla_host* pci_get_drvdata (int ) ;
 int ql_dbg (scalar_t__,struct scsi_qla_host*,int,char*,TYPE_2__*,...) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_io ;
 int ql_dump_buffer (scalar_t__,struct scsi_qla_host*,int,int*,int) ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,TYPE_2__*) ;
 int ql_log_warn ;
 int stub1 (struct qla_hw_data*,TYPE_2__*,int ) ;

__attribute__((used)) static void
qlafx00_status_cont_entry(struct rsp_que *rsp, sts_cont_entry_t *pkt)
{
 uint8_t sense_sz = 0;
 struct qla_hw_data *ha = rsp->hw;
 struct scsi_qla_host *vha = pci_get_drvdata(ha->pdev);
 srb_t *sp = rsp->status_srb;
 struct scsi_cmnd *cp;
 uint32_t sense_len;
 uint8_t *sense_ptr;

 if (!sp) {
  ql_dbg(ql_dbg_io, vha, 0x3037,
      "no SP, sp = %p\n", sp);
  return;
 }

 if (!GET_FW_SENSE_LEN(sp)) {
  ql_dbg(ql_dbg_io, vha, 0x304b,
      "no fw sense data, sp = %p\n", sp);
  return;
 }
 cp = GET_CMD_SP(sp);
 if (cp == ((void*)0)) {
  ql_log(ql_log_warn, vha, 0x303b,
      "cmd is NULL: already returned to OS (sp=%p).\n", sp);

  rsp->status_srb = ((void*)0);
  return;
 }

 if (!GET_CMD_SENSE_LEN(sp)) {
  ql_dbg(ql_dbg_io, vha, 0x304c,
      "no sense data, sp = %p\n", sp);
 } else {
  sense_len = GET_CMD_SENSE_LEN(sp);
  sense_ptr = GET_CMD_SENSE_PTR(sp);
  ql_dbg(ql_dbg_io, vha, 0x304f,
      "sp=%p sense_len=0x%x sense_ptr=%p.\n",
      sp, sense_len, sense_ptr);

  if (sense_len > sizeof(pkt->data))
   sense_sz = sizeof(pkt->data);
  else
   sense_sz = sense_len;


  ql_dump_buffer(ql_dbg_io + ql_dbg_buffer, vha, 0x304e,
      (uint8_t *)pkt, sizeof(sts_cont_entry_t));
  memcpy(sense_ptr, pkt->data, sense_sz);
  ql_dump_buffer(ql_dbg_io + ql_dbg_buffer, vha, 0x304a,
      sense_ptr, sense_sz);

  sense_len -= sense_sz;
  sense_ptr += sense_sz;

  SET_CMD_SENSE_PTR(sp, sense_ptr);
  SET_CMD_SENSE_LEN(sp, sense_len);
 }
 sense_len = GET_FW_SENSE_LEN(sp);
 sense_len = (sense_len > sizeof(pkt->data)) ?
     (sense_len - sizeof(pkt->data)) : 0;
 SET_FW_SENSE_LEN(sp, sense_len);


 if (sense_len == 0) {
  rsp->status_srb = ((void*)0);
  sp->done(ha, sp, cp->result);
 }
}
