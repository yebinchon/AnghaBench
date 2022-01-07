
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_mad_send_buf {struct cm_id_private** context; int retries; struct ib_mad_send_buf* ah; } ;
struct ib_mad_agent {TYPE_2__* qp; } ;
struct ib_ah {struct cm_id_private** context; int retries; struct ib_ah* ah; } ;
struct TYPE_8__ {int pkey_index; int ah_attr; TYPE_1__* port; } ;
struct TYPE_7__ {int remote_cm_qpn; } ;
struct cm_id_private {int refcount; int max_cm_retries; TYPE_4__ av; TYPE_3__ id; } ;
struct TYPE_6__ {int pd; } ;
struct TYPE_5__ {struct ib_mad_agent* mad_agent; } ;


 int GFP_ATOMIC ;
 int IB_MGMT_MAD_DATA ;
 int IB_MGMT_MAD_HDR ;
 scalar_t__ IS_ERR (struct ib_mad_send_buf*) ;
 int PTR_ERR (struct ib_mad_send_buf*) ;
 int atomic_inc (int *) ;
 struct ib_mad_send_buf* ib_create_ah (int ,int *) ;
 struct ib_mad_send_buf* ib_create_send_mad (struct ib_mad_agent*,int ,int ,int ,int ,int ,int ) ;
 int ib_destroy_ah (struct ib_mad_send_buf*) ;

__attribute__((used)) static int cm_alloc_msg(struct cm_id_private *cm_id_priv,
   struct ib_mad_send_buf **msg)
{
 struct ib_mad_agent *mad_agent;
 struct ib_mad_send_buf *m;
 struct ib_ah *ah;

 mad_agent = cm_id_priv->av.port->mad_agent;
 ah = ib_create_ah(mad_agent->qp->pd, &cm_id_priv->av.ah_attr);
 if (IS_ERR(ah))
  return PTR_ERR(ah);

 m = ib_create_send_mad(mad_agent, cm_id_priv->id.remote_cm_qpn,
          cm_id_priv->av.pkey_index,
          0, IB_MGMT_MAD_HDR, IB_MGMT_MAD_DATA,
          GFP_ATOMIC);
 if (IS_ERR(m)) {
  ib_destroy_ah(ah);
  return PTR_ERR(m);
 }


 m->ah = ah;
 m->retries = cm_id_priv->max_cm_retries;

 atomic_inc(&cm_id_priv->refcount);
 m->context[0] = cm_id_priv;
 *msg = m;
 return 0;
}
