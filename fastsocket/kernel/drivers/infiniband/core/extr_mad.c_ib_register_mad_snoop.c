
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_mad_agent {int port_num; int qp; void* context; scalar_t__ snoop_handler; scalar_t__ recv_handler; struct ib_device* device; } ;
struct ib_mad_snoop_private {int mad_snoop_flags; struct ib_mad_agent agent; int refcount; int snoop_index; int comp; TYPE_1__* qp_info; } ;
struct ib_mad_port_private {TYPE_1__* qp_info; } ;
struct ib_device {int dummy; } ;
typedef scalar_t__ ib_mad_snoop_handler ;
typedef scalar_t__ ib_mad_recv_handler ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
struct TYPE_2__ {int qp; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 struct ib_mad_agent* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int get_spl_qp_index (int) ;
 struct ib_mad_port_private* ib_get_mad_port (struct ib_device*,int ) ;
 int init_completion (int *) ;
 scalar_t__ is_snooping_recvs (int) ;
 scalar_t__ is_snooping_sends (int) ;
 int kfree (struct ib_mad_snoop_private*) ;
 struct ib_mad_snoop_private* kzalloc (int,int ) ;
 int register_snoop_agent (TYPE_1__*,struct ib_mad_snoop_private*) ;

struct ib_mad_agent *ib_register_mad_snoop(struct ib_device *device,
        u8 port_num,
        enum ib_qp_type qp_type,
        int mad_snoop_flags,
        ib_mad_snoop_handler snoop_handler,
        ib_mad_recv_handler recv_handler,
        void *context)
{
 struct ib_mad_port_private *port_priv;
 struct ib_mad_agent *ret;
 struct ib_mad_snoop_private *mad_snoop_priv;
 int qpn;


 if ((is_snooping_sends(mad_snoop_flags) && !snoop_handler) ||
     (is_snooping_recvs(mad_snoop_flags) && !recv_handler)) {
  ret = ERR_PTR(-EINVAL);
  goto error1;
 }
 qpn = get_spl_qp_index(qp_type);
 if (qpn == -1) {
  ret = ERR_PTR(-EINVAL);
  goto error1;
 }
 port_priv = ib_get_mad_port(device, port_num);
 if (!port_priv) {
  ret = ERR_PTR(-ENODEV);
  goto error1;
 }

 mad_snoop_priv = kzalloc(sizeof *mad_snoop_priv, GFP_KERNEL);
 if (!mad_snoop_priv) {
  ret = ERR_PTR(-ENOMEM);
  goto error1;
 }


 mad_snoop_priv->qp_info = &port_priv->qp_info[qpn];
 mad_snoop_priv->agent.device = device;
 mad_snoop_priv->agent.recv_handler = recv_handler;
 mad_snoop_priv->agent.snoop_handler = snoop_handler;
 mad_snoop_priv->agent.context = context;
 mad_snoop_priv->agent.qp = port_priv->qp_info[qpn].qp;
 mad_snoop_priv->agent.port_num = port_num;
 mad_snoop_priv->mad_snoop_flags = mad_snoop_flags;
 init_completion(&mad_snoop_priv->comp);
 mad_snoop_priv->snoop_index = register_snoop_agent(
      &port_priv->qp_info[qpn],
      mad_snoop_priv);
 if (mad_snoop_priv->snoop_index < 0) {
  ret = ERR_PTR(mad_snoop_priv->snoop_index);
  goto error2;
 }

 atomic_set(&mad_snoop_priv->refcount, 1);
 return &mad_snoop_priv->agent;

error2:
 kfree(mad_snoop_priv);
error1:
 return ret;
}
