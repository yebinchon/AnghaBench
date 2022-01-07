
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_13__ ;
typedef struct TYPE_30__ TYPE_12__ ;
typedef struct TYPE_29__ TYPE_11__ ;
typedef struct TYPE_28__ TYPE_10__ ;


typedef int uint16_t ;
struct qla_hw_data {TYPE_4__* pdev; } ;
struct fc_rport {scalar_t__ dd_data; } ;
struct TYPE_37__ {int sg_cnt; int sg_list; } ;
struct TYPE_36__ {int sg_cnt; int sg_list; } ;
struct fc_bsg_job {TYPE_10__* request; TYPE_6__ reply_payload; TYPE_5__ request_payload; struct Scsi_Host* shost; struct fc_rport* rport; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_38__ {struct fc_bsg_job* bsg_job; } ;
struct TYPE_29__ {char* name; int done; int free; TYPE_7__ u; int type; } ;
typedef TYPE_11__ srb_t ;
struct TYPE_34__ {int online; } ;
struct TYPE_30__ {TYPE_3__ flags; struct qla_hw_data* hw; } ;
typedef TYPE_12__ scsi_qla_host_t ;
struct TYPE_32__ {int al_pa; int area; int domain; } ;
struct TYPE_33__ {TYPE_1__ b; int b24; } ;
struct TYPE_31__ {TYPE_2__ d_id; int loop_id; TYPE_12__* vha; } ;
typedef TYPE_13__ fc_port_t ;
struct TYPE_39__ {int* port_id; int command_code; } ;
struct TYPE_40__ {TYPE_8__ h_els; } ;
struct TYPE_35__ {int dev; } ;
struct TYPE_28__ {scalar_t__ msgcode; TYPE_9__ rqst_data; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int DRIVER_ERROR ;
 int EAGAIN ;
 int EIO ;
 int ENOMEM ;
 int EPERM ;
 scalar_t__ FC_BSG_HST_ELS_NOLOGIN ;
 scalar_t__ FC_BSG_RPT_ELS ;
 int GFP_KERNEL ;
 int IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int NPH_FABRIC_CONTROLLER ;
 int NPH_F_PORT ;
 int QLA_SUCCESS ;
 int SRB_ELS_CMD_HST ;
 int SRB_ELS_CMD_RPT ;
 int dma_map_sg (int *,int ,int,int ) ;
 int dma_unmap_sg (int *,int ,int,int ) ;
 int kfree (TYPE_13__*) ;
 int ql_dbg (int ,TYPE_12__*,int,char*,...) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_12__*,int,char*,...) ;
 int ql_log_warn ;
 TYPE_13__* qla2x00_alloc_fcport (TYPE_12__*,int ) ;
 int qla2x00_bsg_job_done ;
 int qla2x00_bsg_sp_free ;
 scalar_t__ qla2x00_fabric_login (TYPE_12__*,TYPE_13__*,int *) ;
 TYPE_11__* qla2x00_get_sp (TYPE_12__*,TYPE_13__*,int ) ;
 int qla2x00_rel_sp (TYPE_12__*,TYPE_11__*) ;
 int qla2x00_start_sp (TYPE_11__*) ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;
 TYPE_12__* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int
qla2x00_process_els(struct fc_bsg_job *bsg_job)
{
 struct fc_rport *rport;
 fc_port_t *fcport = ((void*)0);
 struct Scsi_Host *host;
 scsi_qla_host_t *vha;
 struct qla_hw_data *ha;
 srb_t *sp;
 const char *type;
 int req_sg_cnt, rsp_sg_cnt;
 int rval = (DRIVER_ERROR << 16);
 uint16_t nextlid = 0;

 if (bsg_job->request->msgcode == FC_BSG_RPT_ELS) {
  rport = bsg_job->rport;
  fcport = *(fc_port_t **) rport->dd_data;
  host = rport_to_shost(rport);
  vha = shost_priv(host);
  ha = vha->hw;
  type = "FC_BSG_RPT_ELS";
 } else {
  host = bsg_job->shost;
  vha = shost_priv(host);
  ha = vha->hw;
  type = "FC_BSG_HST_ELS_NOLOGIN";
 }


 if (!IS_FWI2_CAPABLE(ha)) {
  ql_dbg(ql_dbg_user, vha, 0x7001,
      "ELS passthru not supported for ISP23xx based adapters.\n");
  rval = -EPERM;
  goto done;
 }


 if (bsg_job->request_payload.sg_cnt > 1 ||
  bsg_job->reply_payload.sg_cnt > 1) {
  ql_dbg(ql_dbg_user, vha, 0x7002,
      "Multiple SG's are not suppored for ELS requests, "
      "request_sg_cnt=%x reply_sg_cnt=%x.\n",
      bsg_job->request_payload.sg_cnt,
      bsg_job->reply_payload.sg_cnt);
  rval = -EPERM;
  goto done;
 }


 if (bsg_job->request->msgcode == FC_BSG_RPT_ELS) {



  if (qla2x00_fabric_login(vha, fcport, &nextlid)) {
   ql_dbg(ql_dbg_user, vha, 0x7003,
       "Failed to login port %06X for ELS passthru.\n",
       fcport->d_id.b24);
   rval = -EIO;
   goto done;
  }
 } else {





  fcport = qla2x00_alloc_fcport(vha, GFP_KERNEL);
  if (!fcport) {
   rval = -ENOMEM;
   goto done;
  }


  fcport->vha = vha;
  fcport->d_id.b.al_pa =
   bsg_job->request->rqst_data.h_els.port_id[0];
  fcport->d_id.b.area =
   bsg_job->request->rqst_data.h_els.port_id[1];
  fcport->d_id.b.domain =
   bsg_job->request->rqst_data.h_els.port_id[2];
  fcport->loop_id =
   (fcport->d_id.b.al_pa == 0xFD) ?
   NPH_FABRIC_CONTROLLER : NPH_F_PORT;
 }

 if (!vha->flags.online) {
  ql_log(ql_log_warn, vha, 0x7005, "Host not online.\n");
  rval = -EIO;
  goto done;
 }

 req_sg_cnt =
  dma_map_sg(&ha->pdev->dev, bsg_job->request_payload.sg_list,
  bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);
 if (!req_sg_cnt) {
  rval = -ENOMEM;
  goto done_free_fcport;
 }

 rsp_sg_cnt = dma_map_sg(&ha->pdev->dev, bsg_job->reply_payload.sg_list,
     bsg_job->reply_payload.sg_cnt, DMA_FROM_DEVICE);
 if (!rsp_sg_cnt) {
  rval = -ENOMEM;
  goto done_free_fcport;
 }

 if ((req_sg_cnt != bsg_job->request_payload.sg_cnt) ||
     (rsp_sg_cnt != bsg_job->reply_payload.sg_cnt)) {
  ql_log(ql_log_warn, vha, 0x7008,
      "dma mapping resulted in different sg counts, "
      "request_sg_cnt: %x dma_request_sg_cnt:%x reply_sg_cnt:%x "
      "dma_reply_sg_cnt:%x.\n", bsg_job->request_payload.sg_cnt,
      req_sg_cnt, bsg_job->reply_payload.sg_cnt, rsp_sg_cnt);
  rval = -EAGAIN;
  goto done_unmap_sg;
 }


 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp) {
  rval = -ENOMEM;
  goto done_unmap_sg;
 }

 sp->type =
  (bsg_job->request->msgcode == FC_BSG_RPT_ELS ?
  SRB_ELS_CMD_RPT : SRB_ELS_CMD_HST);
 sp->name =
  (bsg_job->request->msgcode == FC_BSG_RPT_ELS ?
  "bsg_els_rpt" : "bsg_els_hst");
 sp->u.bsg_job = bsg_job;
 sp->free = qla2x00_bsg_sp_free;
 sp->done = qla2x00_bsg_job_done;

 ql_dbg(ql_dbg_user, vha, 0x700a,
     "bsg rqst type: %s els type: %x - loop-id=%x "
     "portid=%-2x%02x%02x.\n", type,
     bsg_job->request->rqst_data.h_els.command_code, fcport->loop_id,
     fcport->d_id.b.domain, fcport->d_id.b.area, fcport->d_id.b.al_pa);

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x700e,
      "qla2x00_start_sp failed = %d\n", rval);
  qla2x00_rel_sp(vha, sp);
  rval = -EIO;
  goto done_unmap_sg;
 }
 return rval;

done_unmap_sg:
 dma_unmap_sg(&ha->pdev->dev, bsg_job->request_payload.sg_list,
  bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);
 dma_unmap_sg(&ha->pdev->dev, bsg_job->reply_payload.sg_list,
  bsg_job->reply_payload.sg_cnt, DMA_FROM_DEVICE);
 goto done_free_fcport;

done_free_fcport:
 if (bsg_job->request->msgcode == FC_BSG_HST_ELS_NOLOGIN)
  kfree(fcport);
done:
 return rval;
}
