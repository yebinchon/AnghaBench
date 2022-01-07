
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct qla_hw_data {int ms_iocb_dma; int ms_iocb; TYPE_3__* ct_sns; TYPE_1__* isp_ops; } ;
struct ct_sns_rsp {int dummy; } ;
struct TYPE_20__ {int* fc4_types; int * port_id; } ;
struct TYPE_21__ {TYPE_6__ rft_id; } ;
struct ct_sns_req {TYPE_7__ req; } ;
struct TYPE_18__ {int al_pa; int area; int domain; } ;
struct TYPE_19__ {TYPE_4__ b; } ;
struct TYPE_22__ {TYPE_5__ d_id; struct qla_hw_data* hw; } ;
typedef TYPE_8__ scsi_qla_host_t ;
typedef int ms_iocb_entry_t ;
struct TYPE_16__ {struct ct_sns_rsp rsp; int req; } ;
struct TYPE_17__ {TYPE_2__ p; } ;
struct TYPE_15__ {int * (* prep_ms_iocb ) (TYPE_8__*,int ,int ) ;} ;


 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int RFT_ID_CMD ;
 int RFT_ID_REQ_SIZE ;
 int RFT_ID_RSP_SIZE ;
 int ql_dbg (int ,TYPE_8__*,int,char*,...) ;
 int ql_dbg_disc ;
 int qla2x00_chk_ms_status (TYPE_8__*,int *,struct ct_sns_rsp*,char*) ;
 int qla2x00_issue_iocb (TYPE_8__*,int ,int ,int) ;
 struct ct_sns_req* qla2x00_prep_ct_req (int *,int ,int ) ;
 int qla2x00_sns_rft_id (TYPE_8__*) ;
 int * stub1 (TYPE_8__*,int ,int ) ;

int
qla2x00_rft_id(scsi_qla_host_t *vha)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;
 ms_iocb_entry_t *ms_pkt;
 struct ct_sns_req *ct_req;
 struct ct_sns_rsp *ct_rsp;

 if (IS_QLA2100(ha) || IS_QLA2200(ha))
  return qla2x00_sns_rft_id(vha);



 ms_pkt = ha->isp_ops->prep_ms_iocb(vha, RFT_ID_REQ_SIZE,
     RFT_ID_RSP_SIZE);


 ct_req = qla2x00_prep_ct_req(&ha->ct_sns->p.req, RFT_ID_CMD,
     RFT_ID_RSP_SIZE);
 ct_rsp = &ha->ct_sns->p.rsp;


 ct_req->req.rft_id.port_id[0] = vha->d_id.b.domain;
 ct_req->req.rft_id.port_id[1] = vha->d_id.b.area;
 ct_req->req.rft_id.port_id[2] = vha->d_id.b.al_pa;

 ct_req->req.rft_id.fc4_types[2] = 0x01;


 rval = qla2x00_issue_iocb(vha, ha->ms_iocb, ha->ms_iocb_dma,
     sizeof(ms_iocb_entry_t));
 if (rval != QLA_SUCCESS) {

  ql_dbg(ql_dbg_disc, vha, 0x2043,
      "RFT_ID issue IOCB failed (%d).\n", rval);
 } else if (qla2x00_chk_ms_status(vha, ms_pkt, ct_rsp, "RFT_ID") !=
     QLA_SUCCESS) {
  rval = QLA_FUNCTION_FAILED;
 } else {
  ql_dbg(ql_dbg_disc, vha, 0x2044,
      "RFT_ID exiting normally.\n");
 }

 return (rval);
}
