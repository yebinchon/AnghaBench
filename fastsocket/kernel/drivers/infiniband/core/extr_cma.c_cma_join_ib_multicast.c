
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rdma_dev_addr {int dummy; } ;
struct TYPE_5__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct TYPE_7__ {scalar_t__ ps; int port_num; int device; TYPE_2__ route; } ;
struct rdma_id_private {TYPE_3__ id; int qkey; } ;
struct ib_sa_mcmember_rec {int join_state; int pkey; int port_gid; int qkey; int mgid; } ;
struct TYPE_8__ {int ib; } ;
struct cma_multicast {TYPE_4__ multicast; int addr; } ;
typedef int ib_sa_comp_mask ;


 int GFP_KERNEL ;
 int IB_SA_MCMEMBER_REC_FLOW_LABEL ;
 int IB_SA_MCMEMBER_REC_HOP_LIMIT ;
 int IB_SA_MCMEMBER_REC_JOIN_STATE ;
 int IB_SA_MCMEMBER_REC_MGID ;
 int IB_SA_MCMEMBER_REC_MTU ;
 int IB_SA_MCMEMBER_REC_MTU_SELECTOR ;
 int IB_SA_MCMEMBER_REC_PKEY ;
 int IB_SA_MCMEMBER_REC_PORT_GID ;
 int IB_SA_MCMEMBER_REC_QKEY ;
 int IB_SA_MCMEMBER_REC_RATE ;
 int IB_SA_MCMEMBER_REC_RATE_SELECTOR ;
 int IB_SA_MCMEMBER_REC_SL ;
 int IB_SA_MCMEMBER_REC_TRAFFIC_CLASS ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ RDMA_PS_IPOIB ;
 int cma_ib_mc_handler ;
 int cma_set_mgid (struct rdma_id_private*,struct sockaddr*,int *) ;
 int cma_set_qkey (struct rdma_id_private*,int ) ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int ib_addr_get_mgid (struct rdma_dev_addr*,int *) ;
 int ib_addr_get_pkey (struct rdma_dev_addr*) ;
 int ib_sa_get_mcmember_rec (int ,int ,int *,struct ib_sa_mcmember_rec*) ;
 int ib_sa_join_multicast (int *,int ,int ,struct ib_sa_mcmember_rec*,int,int ,int ,struct cma_multicast*) ;
 int rdma_addr_get_sgid (struct rdma_dev_addr*,int *) ;
 int sa_client ;

__attribute__((used)) static int cma_join_ib_multicast(struct rdma_id_private *id_priv,
     struct cma_multicast *mc)
{
 struct ib_sa_mcmember_rec rec;
 struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
 ib_sa_comp_mask comp_mask;
 int ret;

 ib_addr_get_mgid(dev_addr, &rec.mgid);
 ret = ib_sa_get_mcmember_rec(id_priv->id.device, id_priv->id.port_num,
         &rec.mgid, &rec);
 if (ret)
  return ret;

 ret = cma_set_qkey(id_priv, 0);
 if (ret)
  return ret;

 cma_set_mgid(id_priv, (struct sockaddr *) &mc->addr, &rec.mgid);
 rec.qkey = cpu_to_be32(id_priv->qkey);
 rdma_addr_get_sgid(dev_addr, &rec.port_gid);
 rec.pkey = cpu_to_be16(ib_addr_get_pkey(dev_addr));
 rec.join_state = 1;

 comp_mask = IB_SA_MCMEMBER_REC_MGID | IB_SA_MCMEMBER_REC_PORT_GID |
      IB_SA_MCMEMBER_REC_PKEY | IB_SA_MCMEMBER_REC_JOIN_STATE |
      IB_SA_MCMEMBER_REC_QKEY | IB_SA_MCMEMBER_REC_SL |
      IB_SA_MCMEMBER_REC_FLOW_LABEL |
      IB_SA_MCMEMBER_REC_TRAFFIC_CLASS;

 if (id_priv->id.ps == RDMA_PS_IPOIB)
  comp_mask |= IB_SA_MCMEMBER_REC_RATE |
        IB_SA_MCMEMBER_REC_RATE_SELECTOR |
        IB_SA_MCMEMBER_REC_MTU_SELECTOR |
        IB_SA_MCMEMBER_REC_MTU |
        IB_SA_MCMEMBER_REC_HOP_LIMIT;

 mc->multicast.ib = ib_sa_join_multicast(&sa_client, id_priv->id.device,
      id_priv->id.port_num, &rec,
      comp_mask, GFP_KERNEL,
      cma_ib_mc_handler, mc);
 if (IS_ERR(mc->multicast.ib))
  return PTR_ERR(mc->multicast.ib);

 return 0;
}
