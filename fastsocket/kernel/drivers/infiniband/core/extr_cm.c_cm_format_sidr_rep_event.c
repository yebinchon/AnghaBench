
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_cm_sidr_rep_event_param {int info_len; int * info; void* qpn; void* qkey; int status; } ;
struct TYPE_7__ {struct ib_cm_sidr_rep_event_param sidr_rep_rcvd; } ;
struct TYPE_8__ {int * private_data; TYPE_3__ param; } ;
struct cm_work {TYPE_4__ cm_event; TYPE_2__* mad_recv_wc; } ;
struct cm_sidr_rep_msg {int private_data; int info_length; int info; int qkey; int status; } ;
struct TYPE_5__ {scalar_t__ mad; } ;
struct TYPE_6__ {TYPE_1__ recv_buf; } ;


 void* be32_to_cpu (int ) ;
 int cm_sidr_rep_get_qpn (struct cm_sidr_rep_msg*) ;

__attribute__((used)) static void cm_format_sidr_rep_event(struct cm_work *work)
{
 struct cm_sidr_rep_msg *sidr_rep_msg;
 struct ib_cm_sidr_rep_event_param *param;

 sidr_rep_msg = (struct cm_sidr_rep_msg *)
    work->mad_recv_wc->recv_buf.mad;
 param = &work->cm_event.param.sidr_rep_rcvd;
 param->status = sidr_rep_msg->status;
 param->qkey = be32_to_cpu(sidr_rep_msg->qkey);
 param->qpn = be32_to_cpu(cm_sidr_rep_get_qpn(sidr_rep_msg));
 param->info = &sidr_rep_msg->info;
 param->info_len = sidr_rep_msg->info_length;
 work->cm_event.private_data = &sidr_rep_msg->private_data;
}
