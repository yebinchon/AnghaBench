
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct qla_hw_data {int ms_iocb_dma; int ms_iocb; TYPE_3__* ct_sns; TYPE_1__* isp_ops; } ;
struct ct_sns_rsp {int dummy; } ;
struct TYPE_19__ {int fc4_type; int fc4_feature; int * port_id; } ;
struct TYPE_20__ {TYPE_6__ rff_id; } ;
struct ct_sns_req {TYPE_7__ req; } ;
struct TYPE_17__ {int al_pa; int area; int domain; } ;
struct TYPE_18__ {TYPE_4__ b; } ;
struct TYPE_21__ {TYPE_5__ d_id; struct qla_hw_data* hw; } ;
typedef TYPE_8__ scsi_qla_host_t ;
typedef int ms_iocb_entry_t ;
struct TYPE_15__ {struct ct_sns_rsp rsp; int req; } ;
struct TYPE_16__ {TYPE_2__ p; } ;
struct TYPE_14__ {int * (* prep_ms_iocb ) (TYPE_8__*,int ,int ) ;} ;


 int BIT_1 ;
 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int RFF_ID_CMD ;
 int RFF_ID_REQ_SIZE ;
 int RFF_ID_RSP_SIZE ;
 int ql_dbg (int ,TYPE_8__*,int,char*,...) ;
 int ql_dbg_disc ;
 int qla2x00_chk_ms_status (TYPE_8__*,int *,struct ct_sns_rsp*,char*) ;
 int qla2x00_issue_iocb (TYPE_8__*,int ,int ,int) ;
 struct ct_sns_req* qla2x00_prep_ct_req (int *,int ,int ) ;
 int * stub1 (TYPE_8__*,int ,int ) ;

int
qla2x00_rff_id(scsi_qla_host_t *vha)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;
 ms_iocb_entry_t *ms_pkt;
 struct ct_sns_req *ct_req;
 struct ct_sns_rsp *ct_rsp;

 if (IS_QLA2100(ha) || IS_QLA2200(ha)) {
  ql_dbg(ql_dbg_disc, vha, 0x2046,
      "RFF_ID call not supported on ISP2100/ISP2200.\n");
  return (QLA_SUCCESS);
 }



 ms_pkt = ha->isp_ops->prep_ms_iocb(vha, RFF_ID_REQ_SIZE,
     RFF_ID_RSP_SIZE);


 ct_req = qla2x00_prep_ct_req(&ha->ct_sns->p.req, RFF_ID_CMD,
     RFF_ID_RSP_SIZE);
 ct_rsp = &ha->ct_sns->p.rsp;


 ct_req->req.rff_id.port_id[0] = vha->d_id.b.domain;
 ct_req->req.rff_id.port_id[1] = vha->d_id.b.area;
 ct_req->req.rff_id.port_id[2] = vha->d_id.b.al_pa;

 ct_req->req.rff_id.fc4_feature = BIT_1;
 ct_req->req.rff_id.fc4_type = 0x08;


 rval = qla2x00_issue_iocb(vha, ha->ms_iocb, ha->ms_iocb_dma,
     sizeof(ms_iocb_entry_t));
 if (rval != QLA_SUCCESS) {

  ql_dbg(ql_dbg_disc, vha, 0x2047,
      "RFF_ID issue IOCB failed (%d).\n", rval);
 } else if (qla2x00_chk_ms_status(vha, ms_pkt, ct_rsp, "RFF_ID") !=
     QLA_SUCCESS) {
  rval = QLA_FUNCTION_FAILED;
 } else {
  ql_dbg(ql_dbg_disc, vha, 0x2048,
      "RFF_ID exiting normally.\n");
 }

 return (rval);
}
