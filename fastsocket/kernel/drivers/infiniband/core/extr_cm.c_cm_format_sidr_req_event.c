
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ib_cm_sidr_req_event_param {int port; struct ib_cm_id* listen_id; int pkey; } ;
struct ib_cm_id {int dummy; } ;
struct TYPE_6__ {struct ib_cm_sidr_req_event_param sidr_req_rcvd; } ;
struct TYPE_8__ {int * private_data; TYPE_1__ param; } ;
struct cm_work {TYPE_3__ cm_event; TYPE_2__* port; TYPE_5__* mad_recv_wc; } ;
struct cm_sidr_req_msg {int private_data; int pkey; } ;
struct TYPE_9__ {scalar_t__ mad; } ;
struct TYPE_10__ {TYPE_4__ recv_buf; } ;
struct TYPE_7__ {int port_num; } ;


 int __be16_to_cpu (int ) ;

__attribute__((used)) static void cm_format_sidr_req_event(struct cm_work *work,
         struct ib_cm_id *listen_id)
{
 struct cm_sidr_req_msg *sidr_req_msg;
 struct ib_cm_sidr_req_event_param *param;

 sidr_req_msg = (struct cm_sidr_req_msg *)
    work->mad_recv_wc->recv_buf.mad;
 param = &work->cm_event.param.sidr_req_rcvd;
 param->pkey = __be16_to_cpu(sidr_req_msg->pkey);
 param->listen_id = listen_id;
 param->port = work->port->port_num;
 work->cm_event.private_data = &sidr_req_msg->private_data;
}
