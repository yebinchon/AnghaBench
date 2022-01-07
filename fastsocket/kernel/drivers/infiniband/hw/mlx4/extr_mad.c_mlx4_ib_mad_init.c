
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_dev {int num_ports; struct ib_mad_agent*** send_agent; int ib_dev; } ;
struct ib_mad_agent {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_INFINIBAND ;
 int IB_QPT_GSI ;
 int IB_QPT_SMI ;
 scalar_t__ IS_ERR (struct ib_mad_agent*) ;
 int PTR_ERR (struct ib_mad_agent*) ;
 struct ib_mad_agent* ib_register_mad_agent (int *,int,int ,int *,int ,int ,int *,int *) ;
 int ib_unregister_mad_agent (struct ib_mad_agent*) ;
 int rdma_port_get_link_layer (int *,int) ;
 int send_handler ;

int mlx4_ib_mad_init(struct mlx4_ib_dev *dev)
{
 struct ib_mad_agent *agent;
 int p, q;
 int ret;
 enum rdma_link_layer ll;

 for (p = 0; p < dev->num_ports; ++p) {
  ll = rdma_port_get_link_layer(&dev->ib_dev, p + 1);
  for (q = 0; q <= 1; ++q) {
   if (ll == IB_LINK_LAYER_INFINIBAND) {
    agent = ib_register_mad_agent(&dev->ib_dev, p + 1,
             q ? IB_QPT_GSI : IB_QPT_SMI,
             ((void*)0), 0, send_handler,
             ((void*)0), ((void*)0));
    if (IS_ERR(agent)) {
     ret = PTR_ERR(agent);
     goto err;
    }
    dev->send_agent[p][q] = agent;
   } else
    dev->send_agent[p][q] = ((void*)0);
  }
 }

 return 0;

err:
 for (p = 0; p < dev->num_ports; ++p)
  for (q = 0; q <= 1; ++q)
   if (dev->send_agent[p][q])
    ib_unregister_mad_agent(dev->send_agent[p][q]);

 return ret;
}
