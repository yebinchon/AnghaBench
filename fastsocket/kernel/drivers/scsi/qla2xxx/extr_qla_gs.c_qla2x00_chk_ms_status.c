
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_10__ {int response; } ;
struct ct_sns_rsp {TYPE_1__ header; } ;
struct ct_rsp_hdr {int dummy; } ;
struct ct_entry_24xx {int comp_status; } ;
struct TYPE_11__ {int al_pa; int area; int domain; } ;
struct TYPE_12__ {TYPE_2__ b; } ;
struct TYPE_13__ {TYPE_3__ d_id; struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_14__ {scalar_t__ entry_status; int status; } ;
typedef TYPE_5__ ms_iocb_entry_t ;





 int CT_ACCEPT_RESPONSE ;
 scalar_t__ IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_INVALID_COMMAND ;
 int QLA_SUCCESS ;
 int __constant_cpu_to_be16 (int ) ;
 int le16_to_cpu (int ) ;
 int ql_dbg (scalar_t__,TYPE_4__*,int,char*,char const*,int,int ,int ,...) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_disc ;
 int ql_dump_buffer (scalar_t__,TYPE_4__*,int,int *,int) ;

__attribute__((used)) static int
qla2x00_chk_ms_status(scsi_qla_host_t *vha, ms_iocb_entry_t *ms_pkt,
    struct ct_sns_rsp *ct_rsp, const char *routine)
{
 int rval;
 uint16_t comp_status;
 struct qla_hw_data *ha = vha->hw;

 rval = QLA_FUNCTION_FAILED;
 if (ms_pkt->entry_status != 0) {
  ql_dbg(ql_dbg_disc, vha, 0x2031,
      "%s failed, error status (%x) on port_id: %02x%02x%02x.\n",
      routine, ms_pkt->entry_status, vha->d_id.b.domain,
      vha->d_id.b.area, vha->d_id.b.al_pa);
 } else {
  if (IS_FWI2_CAPABLE(ha))
   comp_status = le16_to_cpu(
       ((struct ct_entry_24xx *)ms_pkt)->comp_status);
  else
   comp_status = le16_to_cpu(ms_pkt->status);
  switch (comp_status) {
  case 130:
  case 128:
  case 129:
   if (ct_rsp->header.response !=
       __constant_cpu_to_be16(CT_ACCEPT_RESPONSE)) {
    ql_dbg(ql_dbg_disc + ql_dbg_buffer, vha, 0x2077,
        "%s failed rejected request on port_id: "
        "%02x%02x%02x.\n", routine,
        vha->d_id.b.domain, vha->d_id.b.area,
        vha->d_id.b.al_pa);
    ql_dump_buffer(ql_dbg_disc + ql_dbg_buffer, vha,
        0x2078, (uint8_t *)&ct_rsp->header,
        sizeof(struct ct_rsp_hdr));
    rval = QLA_INVALID_COMMAND;
   } else
    rval = QLA_SUCCESS;
   break;
  default:
   ql_dbg(ql_dbg_disc, vha, 0x2033,
       "%s failed, completion status (%x) on port_id: "
       "%02x%02x%02x.\n", routine, comp_status,
       vha->d_id.b.domain, vha->d_id.b.area,
       vha->d_id.b.al_pa);
   break;
  }
 }
 return rval;
}
