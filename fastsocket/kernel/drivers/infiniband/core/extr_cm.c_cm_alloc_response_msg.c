
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_mad_send_buf {struct ib_mad_send_buf* ah; } ;
struct TYPE_5__ {int grh; } ;
struct ib_mad_recv_wc {TYPE_4__* wc; TYPE_1__ recv_buf; } ;
struct ib_ah {struct ib_ah* ah; } ;
struct cm_port {TYPE_3__* mad_agent; int port_num; } ;
struct TYPE_8__ {int pkey_index; } ;
struct TYPE_7__ {TYPE_2__* qp; } ;
struct TYPE_6__ {int pd; } ;


 int GFP_ATOMIC ;
 int IB_MGMT_MAD_DATA ;
 int IB_MGMT_MAD_HDR ;
 scalar_t__ IS_ERR (struct ib_mad_send_buf*) ;
 int PTR_ERR (struct ib_mad_send_buf*) ;
 struct ib_mad_send_buf* ib_create_ah_from_wc (int ,TYPE_4__*,int ,int ) ;
 struct ib_mad_send_buf* ib_create_send_mad (TYPE_3__*,int,int ,int ,int ,int ,int ) ;
 int ib_destroy_ah (struct ib_mad_send_buf*) ;

__attribute__((used)) static int cm_alloc_response_msg(struct cm_port *port,
     struct ib_mad_recv_wc *mad_recv_wc,
     struct ib_mad_send_buf **msg)
{
 struct ib_mad_send_buf *m;
 struct ib_ah *ah;

 ah = ib_create_ah_from_wc(port->mad_agent->qp->pd, mad_recv_wc->wc,
      mad_recv_wc->recv_buf.grh, port->port_num);
 if (IS_ERR(ah))
  return PTR_ERR(ah);

 m = ib_create_send_mad(port->mad_agent, 1, mad_recv_wc->wc->pkey_index,
          0, IB_MGMT_MAD_HDR, IB_MGMT_MAD_DATA,
          GFP_ATOMIC);
 if (IS_ERR(m)) {
  ib_destroy_ah(ah);
  return PTR_ERR(m);
 }
 m->ah = ah;
 *msg = m;
 return 0;
}
