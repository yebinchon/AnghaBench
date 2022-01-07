
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_mad_send_buf {scalar_t__ mad; } ;
struct TYPE_3__ {scalar_t__ mad; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; } ;
struct cm_port {int dummy; } ;
struct TYPE_4__ {int tid; } ;
struct cm_dreq_msg {int remote_comm_id; int local_comm_id; TYPE_2__ hdr; } ;
struct cm_drep_msg {int local_comm_id; int remote_comm_id; int hdr; } ;


 int CM_DREP_ATTR_ID ;
 int cm_alloc_response_msg (struct cm_port*,struct ib_mad_recv_wc*,struct ib_mad_send_buf**) ;
 int cm_format_mad_hdr (int *,int ,int ) ;
 int cm_free_msg (struct ib_mad_send_buf*) ;
 int ib_post_send_mad (struct ib_mad_send_buf*,int *) ;

__attribute__((used)) static int cm_issue_drep(struct cm_port *port,
    struct ib_mad_recv_wc *mad_recv_wc)
{
 struct ib_mad_send_buf *msg = ((void*)0);
 struct cm_dreq_msg *dreq_msg;
 struct cm_drep_msg *drep_msg;
 int ret;

 ret = cm_alloc_response_msg(port, mad_recv_wc, &msg);
 if (ret)
  return ret;

 dreq_msg = (struct cm_dreq_msg *) mad_recv_wc->recv_buf.mad;
 drep_msg = (struct cm_drep_msg *) msg->mad;

 cm_format_mad_hdr(&drep_msg->hdr, CM_DREP_ATTR_ID, dreq_msg->hdr.tid);
 drep_msg->remote_comm_id = dreq_msg->local_comm_id;
 drep_msg->local_comm_id = dreq_msg->remote_comm_id;

 ret = ib_post_send_mad(msg, ((void*)0));
 if (ret)
  cm_free_msg(msg);

 return ret;
}
