
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef size_t uint16_t ;
struct TYPE_29__ {scalar_t__ rsvd_1; int al_pa; int area; int domain; } ;
struct TYPE_30__ {TYPE_8__ b; } ;
struct TYPE_20__ {TYPE_9__ d_id; int port_name; } ;
typedef TYPE_10__ sw_info_t ;
struct qla_hw_data {size_t max_fibre_devices; int ms_iocb_dma; int ms_iocb; TYPE_3__* ct_sns; TYPE_1__* isp_ops; } ;
struct TYPE_27__ {int port_name; } ;
struct TYPE_28__ {TYPE_6__ gpn_id; } ;
struct ct_sns_rsp {TYPE_7__ rsp; } ;
struct TYPE_25__ {int * port_id; } ;
struct TYPE_26__ {TYPE_4__ port_id; } ;
struct ct_sns_req {TYPE_5__ req; } ;
struct TYPE_21__ {struct qla_hw_data* hw; } ;
typedef TYPE_11__ scsi_qla_host_t ;
typedef int ms_iocb_entry_t ;
struct TYPE_23__ {struct ct_sns_rsp rsp; int req; } ;
struct TYPE_24__ {TYPE_2__ p; } ;
struct TYPE_22__ {int * (* prep_ms_iocb ) (TYPE_11__*,int ,int ) ;} ;


 int GPN_ID_CMD ;
 int GPN_ID_REQ_SIZE ;
 int GPN_ID_RSP_SIZE ;
 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int WWN_SIZE ;
 int memcpy (int ,int ,int ) ;
 int ql_dbg (int ,TYPE_11__*,int,char*,int) ;
 int ql_dbg_disc ;
 int qla2x00_chk_ms_status (TYPE_11__*,int *,struct ct_sns_rsp*,char*) ;
 int qla2x00_issue_iocb (TYPE_11__*,int ,int ,int) ;
 struct ct_sns_req* qla2x00_prep_ct_req (int *,int ,int ) ;
 int qla2x00_sns_gpn_id (TYPE_11__*,TYPE_10__*) ;
 int * stub1 (TYPE_11__*,int ,int ) ;

int
qla2x00_gpn_id(scsi_qla_host_t *vha, sw_info_t *list)
{
 int rval = QLA_SUCCESS;
 uint16_t i;

 ms_iocb_entry_t *ms_pkt;
 struct ct_sns_req *ct_req;
 struct ct_sns_rsp *ct_rsp;
 struct qla_hw_data *ha = vha->hw;

 if (IS_QLA2100(ha) || IS_QLA2200(ha))
  return qla2x00_sns_gpn_id(vha, list);

 for (i = 0; i < ha->max_fibre_devices; i++) {


  ms_pkt = ha->isp_ops->prep_ms_iocb(vha, GPN_ID_REQ_SIZE,
      GPN_ID_RSP_SIZE);


  ct_req = qla2x00_prep_ct_req(&ha->ct_sns->p.req, GPN_ID_CMD,
      GPN_ID_RSP_SIZE);
  ct_rsp = &ha->ct_sns->p.rsp;


  ct_req->req.port_id.port_id[0] = list[i].d_id.b.domain;
  ct_req->req.port_id.port_id[1] = list[i].d_id.b.area;
  ct_req->req.port_id.port_id[2] = list[i].d_id.b.al_pa;


  rval = qla2x00_issue_iocb(vha, ha->ms_iocb, ha->ms_iocb_dma,
      sizeof(ms_iocb_entry_t));
  if (rval != QLA_SUCCESS) {

   ql_dbg(ql_dbg_disc, vha, 0x2056,
       "GPN_ID issue IOCB failed (%d).\n", rval);
   break;
  } else if (qla2x00_chk_ms_status(vha, ms_pkt, ct_rsp,
      "GPN_ID") != QLA_SUCCESS) {
   rval = QLA_FUNCTION_FAILED;
   break;
  } else {

   memcpy(list[i].port_name,
       ct_rsp->rsp.gpn_id.port_name, WWN_SIZE);
  }


  if (list[i].d_id.b.rsvd_1 != 0)
   break;
 }

 return (rval);
}
