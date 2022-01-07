
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct qla_hw_data {int ms_iocb_dma; int ms_iocb; TYPE_3__* ct_sns; TYPE_1__* isp_ops; } ;
struct ct_sns_rsp {int dummy; } ;
struct TYPE_19__ {scalar_t__ name_len; int sym_node_name; int node_name; } ;
struct TYPE_20__ {TYPE_4__ rsnn_nn; } ;
struct ct_sns_req {TYPE_5__ req; } ;
struct TYPE_21__ {int node_name; struct qla_hw_data* hw; } ;
typedef TYPE_6__ scsi_qla_host_t ;
struct TYPE_22__ {int req_bytecount; int dseg_req_length; } ;
typedef TYPE_7__ ms_iocb_entry_t ;
struct TYPE_17__ {struct ct_sns_rsp rsp; int req; } ;
struct TYPE_18__ {TYPE_2__ p; } ;
struct TYPE_16__ {TYPE_7__* (* prep_ms_iocb ) (TYPE_6__*,int ,int ) ;} ;


 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int RSNN_NN_CMD ;
 int RSNN_NN_RSP_SIZE ;
 int WWN_SIZE ;
 int cpu_to_le32 (scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 int ql_dbg (int ,TYPE_6__*,int,char*,...) ;
 int ql_dbg_disc ;
 int qla2x00_chk_ms_status (TYPE_6__*,TYPE_7__*,struct ct_sns_rsp*,char*) ;
 int qla2x00_get_sym_node_name (TYPE_6__*,int ) ;
 int qla2x00_issue_iocb (TYPE_6__*,int ,int ,int) ;
 struct ct_sns_req* qla2x00_prep_ct_req (int *,int ,int ) ;
 scalar_t__ strlen (int ) ;
 TYPE_7__* stub1 (TYPE_6__*,int ,int ) ;

int
qla2x00_rsnn_nn(scsi_qla_host_t *vha)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;
 ms_iocb_entry_t *ms_pkt;
 struct ct_sns_req *ct_req;
 struct ct_sns_rsp *ct_rsp;

 if (IS_QLA2100(ha) || IS_QLA2200(ha)) {
  ql_dbg(ql_dbg_disc, vha, 0x2050,
      "RSNN_ID call unsupported on ISP2100/ISP2200.\n");
  return (QLA_SUCCESS);
 }




 ms_pkt = ha->isp_ops->prep_ms_iocb(vha, 0, RSNN_NN_RSP_SIZE);


 ct_req = qla2x00_prep_ct_req(&ha->ct_sns->p.req, RSNN_NN_CMD,
     RSNN_NN_RSP_SIZE);
 ct_rsp = &ha->ct_sns->p.rsp;


 memcpy(ct_req->req.rsnn_nn.node_name, vha->node_name, WWN_SIZE);


 qla2x00_get_sym_node_name(vha, ct_req->req.rsnn_nn.sym_node_name);


 ct_req->req.rsnn_nn.name_len =
     (uint8_t)strlen(ct_req->req.rsnn_nn.sym_node_name);


 ms_pkt->req_bytecount =
     cpu_to_le32(24 + 1 + ct_req->req.rsnn_nn.name_len);
 ms_pkt->dseg_req_length = ms_pkt->req_bytecount;


 rval = qla2x00_issue_iocb(vha, ha->ms_iocb, ha->ms_iocb_dma,
     sizeof(ms_iocb_entry_t));
 if (rval != QLA_SUCCESS) {

  ql_dbg(ql_dbg_disc, vha, 0x2051,
      "RSNN_NN issue IOCB failed (%d).\n", rval);
 } else if (qla2x00_chk_ms_status(vha, ms_pkt, ct_rsp, "RSNN_NN") !=
     QLA_SUCCESS) {
  rval = QLA_FUNCTION_FAILED;
 } else {
  ql_dbg(ql_dbg_disc, vha, 0x2052,
      "RSNN_NN exiting normally.\n");
 }

 return (rval);
}
