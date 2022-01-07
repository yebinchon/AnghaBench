
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct TYPE_27__ {scalar_t__ rsvd_1; int al_pa; int area; int domain; } ;
struct TYPE_28__ {TYPE_8__ b; } ;
struct TYPE_18__ {TYPE_9__ d_id; int fc4_type; } ;
typedef TYPE_10__ sw_info_t ;
struct qla_hw_data {size_t max_fibre_devices; int ms_iocb_dma; int ms_iocb; TYPE_3__* ct_sns; TYPE_1__* isp_ops; } ;
struct TYPE_25__ {int* fc4_features; } ;
struct TYPE_26__ {TYPE_6__ gff_id; } ;
struct ct_sns_rsp {TYPE_7__ rsp; } ;
struct TYPE_23__ {int * port_id; } ;
struct TYPE_24__ {TYPE_4__ port_id; } ;
struct ct_sns_req {TYPE_5__ req; } ;
struct TYPE_19__ {struct qla_hw_data* hw; } ;
typedef TYPE_11__ scsi_qla_host_t ;
typedef int ms_iocb_entry_t ;
struct TYPE_21__ {struct ct_sns_rsp rsp; int req; } ;
struct TYPE_22__ {TYPE_2__ p; } ;
struct TYPE_20__ {int * (* prep_ms_iocb ) (TYPE_11__*,int ,int ) ;} ;


 int FC4_TYPE_FCP_SCSI ;
 int FC4_TYPE_OTHER ;
 int FC4_TYPE_UNKNOWN ;
 size_t GFF_FCP_SCSI_OFFSET ;
 int GFF_ID_CMD ;
 int GFF_ID_REQ_SIZE ;
 int GFF_ID_RSP_SIZE ;
 int IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 int ql_dbg (int ,TYPE_11__*,int,char*,...) ;
 int ql_dbg_disc ;
 int qla2x00_chk_ms_status (TYPE_11__*,int *,struct ct_sns_rsp*,char*) ;
 int qla2x00_issue_iocb (TYPE_11__*,int ,int ,int) ;
 struct ct_sns_req* qla2x00_prep_ct_req (int *,int ,int ) ;
 int * stub1 (TYPE_11__*,int ,int ) ;

void
qla2x00_gff_id(scsi_qla_host_t *vha, sw_info_t *list)
{
 int rval;
 uint16_t i;

 ms_iocb_entry_t *ms_pkt;
 struct ct_sns_req *ct_req;
 struct ct_sns_rsp *ct_rsp;
 struct qla_hw_data *ha = vha->hw;
 uint8_t fcp_scsi_features = 0;

 for (i = 0; i < ha->max_fibre_devices; i++) {


  list[i].fc4_type = FC4_TYPE_UNKNOWN;


  if (!IS_FWI2_CAPABLE(ha))
   continue;


  ms_pkt = ha->isp_ops->prep_ms_iocb(vha, GFF_ID_REQ_SIZE,
      GFF_ID_RSP_SIZE);


  ct_req = qla2x00_prep_ct_req(&ha->ct_sns->p.req, GFF_ID_CMD,
      GFF_ID_RSP_SIZE);
  ct_rsp = &ha->ct_sns->p.rsp;


  ct_req->req.port_id.port_id[0] = list[i].d_id.b.domain;
  ct_req->req.port_id.port_id[1] = list[i].d_id.b.area;
  ct_req->req.port_id.port_id[2] = list[i].d_id.b.al_pa;


  rval = qla2x00_issue_iocb(vha, ha->ms_iocb, ha->ms_iocb_dma,
     sizeof(ms_iocb_entry_t));

  if (rval != QLA_SUCCESS) {
   ql_dbg(ql_dbg_disc, vha, 0x205c,
       "GFF_ID issue IOCB failed (%d).\n", rval);
  } else if (qla2x00_chk_ms_status(vha, ms_pkt, ct_rsp,
          "GFF_ID") != QLA_SUCCESS) {
   ql_dbg(ql_dbg_disc, vha, 0x205d,
       "GFF_ID IOCB status had a failure status code.\n");
  } else {
   fcp_scsi_features =
      ct_rsp->rsp.gff_id.fc4_features[GFF_FCP_SCSI_OFFSET];
   fcp_scsi_features &= 0x0f;

   if (fcp_scsi_features)
    list[i].fc4_type = FC4_TYPE_FCP_SCSI;
   else
    list[i].fc4_type = FC4_TYPE_OTHER;
  }


  if (list[i].d_id.b.rsvd_1 != 0)
   break;
 }
}
