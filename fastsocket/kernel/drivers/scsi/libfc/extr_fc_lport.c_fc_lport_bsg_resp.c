
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct fc_seq {int dummy; } ;
struct fc_lport {int lp_mutex; } ;
struct fc_frame_header {int fh_f_ctl; int fh_seq_cnt; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int ct_cmd; } ;
struct TYPE_7__ {scalar_t__ payload_len; } ;
struct fc_bsg_job {int reply_len; int (* job_done ) (struct fc_bsg_job*) ;int state_flags; TYPE_4__* reply; TYPE_3__ reply_payload; } ;
struct fc_bsg_info {unsigned short rsp_code; int offset; int nents; int sg; struct fc_lport* lport; struct fc_bsg_job* job; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_1__ ctels_reply; } ;
struct TYPE_8__ {scalar_t__ reply_payload_rcv_len; scalar_t__ result; TYPE_2__ reply_data; } ;


 scalar_t__ ECONNABORTED ;
 scalar_t__ ETIMEDOUT ;
 int FC_CTELS_STATUS_OK ;
 int FC_CTELS_STATUS_REJECT ;
 scalar_t__ FC_EOF_T ;
 int FC_EX_CLOSED ;
 int FC_FC_END_SEQ ;
 int FC_FC_LAST_SEQ ;
 unsigned short FC_FS_ACC ;
 int FC_RQST_STATE_DONE ;
 scalar_t__ FC_SOF_I3 ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int KM_BIO_SRC_IRQ ;
 int PTR_ERR (struct fc_frame*) ;
 scalar_t__ fc_copy_buffer_to_sglist (void*,size_t,int ,int *,int *,int ,int *) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 void* fc_frame_payload_get (struct fc_frame*,int ) ;
 scalar_t__ fc_frame_payload_op (struct fc_frame*) ;
 scalar_t__ fr_eof (struct fc_frame*) ;
 int fr_len (struct fc_frame*) ;
 scalar_t__ fr_sof (struct fc_frame*) ;
 int kfree (struct fc_bsg_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntoh24 (int ) ;
 unsigned short ntohs (int ) ;
 int stub1 (struct fc_bsg_job*) ;
 int stub2 (struct fc_bsg_job*) ;

__attribute__((used)) static void fc_lport_bsg_resp(struct fc_seq *sp, struct fc_frame *fp,
         void *info_arg)
{
 struct fc_bsg_info *info = info_arg;
 struct fc_bsg_job *job = info->job;
 struct fc_lport *lport = info->lport;
 struct fc_frame_header *fh;
 size_t len;
 void *buf;

 if (IS_ERR(fp)) {
  job->reply->result = (PTR_ERR(fp) == -FC_EX_CLOSED) ?
   -ECONNABORTED : -ETIMEDOUT;
  job->reply_len = sizeof(uint32_t);
  job->state_flags |= FC_RQST_STATE_DONE;
  job->job_done(job);
  kfree(info);
  return;
 }

 mutex_lock(&lport->lp_mutex);
 fh = fc_frame_header_get(fp);
 len = fr_len(fp) - sizeof(*fh);
 buf = fc_frame_payload_get(fp, 0);

 if (fr_sof(fp) == FC_SOF_I3 && !ntohs(fh->fh_seq_cnt)) {

  unsigned short cmd = (info->rsp_code == FC_FS_ACC) ?
   ntohs(((struct fc_ct_hdr *)buf)->ct_cmd) :
   (unsigned short)fc_frame_payload_op(fp);


  job->reply->reply_data.ctels_reply.status =
   (cmd == info->rsp_code) ?
   FC_CTELS_STATUS_OK : FC_CTELS_STATUS_REJECT;
 }

 job->reply->reply_payload_rcv_len +=
  fc_copy_buffer_to_sglist(buf, len, info->sg, &info->nents,
      &info->offset, KM_BIO_SRC_IRQ, ((void*)0));

 if (fr_eof(fp) == FC_EOF_T &&
     (ntoh24(fh->fh_f_ctl) & (FC_FC_LAST_SEQ | FC_FC_END_SEQ)) ==
     (FC_FC_LAST_SEQ | FC_FC_END_SEQ)) {
  if (job->reply->reply_payload_rcv_len >
      job->reply_payload.payload_len)
   job->reply->reply_payload_rcv_len =
    job->reply_payload.payload_len;
  job->reply->result = 0;
  job->state_flags |= FC_RQST_STATE_DONE;
  job->job_done(job);
  kfree(info);
 }
 fc_frame_free(fp);
 mutex_unlock(&lport->lp_mutex);
}
