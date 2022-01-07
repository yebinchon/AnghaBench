
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct request {int resid_len; } ;
struct fc_rport_priv {int e_d_tov; } ;
struct fc_rport {int port_id; struct fc_rport_priv* dd_data; } ;
struct TYPE_13__ {struct fc_rport_priv* (* rport_lookup ) (struct fc_lport*,int ) ;} ;
struct fc_lport {int lp_mutex; int e_d_tov; TYPE_5__ tt; struct fc_rport_priv* dns_rdata; } ;
struct TYPE_11__ {int payload_len; } ;
struct fc_bsg_job {TYPE_8__* request; struct fc_rport* rport; TYPE_3__ reply_payload; TYPE_2__* reply; struct Scsi_Host* shost; TYPE_1__* req; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_14__ {int port_id; } ;
struct TYPE_12__ {int port_id; } ;
struct TYPE_15__ {TYPE_6__ h_els; TYPE_4__ h_ct; } ;
struct TYPE_16__ {int msgcode; TYPE_7__ rqst_data; } ;
struct TYPE_10__ {scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_9__ {struct request* next_rq; } ;


 int EINVAL ;




 int FC_FID_DIR_SERV ;
 int fc_lport_ct_request (struct fc_bsg_job*,struct fc_lport*,int ,int ) ;
 int fc_lport_els_request (struct fc_bsg_job*,struct fc_lport*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntoh24 (int ) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 struct fc_rport_priv* stub1 (struct fc_lport*,int ) ;

int fc_lport_bsg_request(struct fc_bsg_job *job)
{
 struct request *rsp = job->req->next_rq;
 struct Scsi_Host *shost = job->shost;
 struct fc_lport *lport = shost_priv(shost);
 struct fc_rport *rport;
 struct fc_rport_priv *rdata;
 int rc = -EINVAL;
 u32 did;

 job->reply->reply_payload_rcv_len = 0;
 if (rsp)
  rsp->resid_len = job->reply_payload.payload_len;

 mutex_lock(&lport->lp_mutex);

 switch (job->request->msgcode) {
 case 128:
  rport = job->rport;
  if (!rport)
   break;

  rdata = rport->dd_data;
  rc = fc_lport_els_request(job, lport, rport->port_id,
       rdata->e_d_tov);
  break;

 case 129:
  rport = job->rport;
  if (!rport)
   break;

  rdata = rport->dd_data;
  rc = fc_lport_ct_request(job, lport, rport->port_id,
      rdata->e_d_tov);
  break;

 case 131:
  did = ntoh24(job->request->rqst_data.h_ct.port_id);
  if (did == FC_FID_DIR_SERV)
   rdata = lport->dns_rdata;
  else
   rdata = lport->tt.rport_lookup(lport, did);

  if (!rdata)
   break;

  rc = fc_lport_ct_request(job, lport, did, rdata->e_d_tov);
  break;

 case 130:
  did = ntoh24(job->request->rqst_data.h_els.port_id);
  rc = fc_lport_els_request(job, lport, did, lport->e_d_tov);
  break;
 }

 mutex_unlock(&lport->lp_mutex);
 return rc;
}
