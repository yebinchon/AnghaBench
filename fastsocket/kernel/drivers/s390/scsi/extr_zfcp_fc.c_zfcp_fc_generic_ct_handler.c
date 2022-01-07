
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zfcp_send_ct {scalar_t__ status; } ;
struct TYPE_8__ {int wka_port; } ;
struct zfcp_ct_fc_job {TYPE_4__ ct; struct fc_bsg_job* job; } ;
struct TYPE_6__ {int status; } ;
struct TYPE_7__ {TYPE_2__ ctels_reply; } ;
struct fc_bsg_reply {int result; TYPE_3__ reply_data; int reply_payload_rcv_len; } ;
struct TYPE_5__ {int payload_len; } ;
struct fc_bsg_job {int (* job_done ) (struct fc_bsg_job*) ;int state_flags; TYPE_1__ reply_payload; struct zfcp_send_ct* dd_data; struct fc_bsg_reply* reply; } ;


 int EIO ;
 int FC_CTELS_STATUS_OK ;
 int FC_RQST_STATE_DONE ;
 int kfree (struct zfcp_ct_fc_job*) ;
 int stub1 (struct fc_bsg_job*) ;
 int zfcp_fc_wka_port_put (int ) ;

__attribute__((used)) static void zfcp_fc_generic_ct_handler(unsigned long data)
{
 struct zfcp_ct_fc_job *ct_fc_job = (struct zfcp_ct_fc_job *) data;
 struct fc_bsg_job *job = ct_fc_job->job;
 struct fc_bsg_reply *jr = job->reply;
 struct zfcp_send_ct *zfcp_ct = job->dd_data;

 jr->reply_payload_rcv_len = job->reply_payload.payload_len;
 jr->reply_data.ctels_reply.status = FC_CTELS_STATUS_OK;
 jr->result = zfcp_ct->status ? -EIO : 0;
 job->state_flags = FC_RQST_STATE_DONE;
 job->job_done(job);

 zfcp_fc_wka_port_put(ct_fc_job->ct.wka_port);

 kfree(ct_fc_job);
}
