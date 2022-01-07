
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int dst_dev_addr; int src_dev_addr; scalar_t__ bound_dev_if; } ;
struct rdma_addr {TYPE_2__ dev_addr; } ;
struct rdma_route {int num_paths; struct cma_work* path_rec; struct rdma_addr addr; } ;
struct TYPE_4__ {struct rdma_route route; } ;
struct rdma_id_private {int tos; TYPE_1__ id; } ;
struct net_device {int priv_flags; int mtu; } ;
struct TYPE_6__ {scalar_t__ status; int event; } ;
struct cma_work {int hop_limit; int reversible; int work; TYPE_3__ event; int new_state; int old_state; int mtu; int packet_life_time; void* packet_life_time_selector; int rate; void* rate_selector; int sl; void* mtu_selector; int pkey; int dgid; int sgid; struct rdma_id_private* id; } ;


 int CMA_IBOE_PACKET_LIFETIME ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* IB_SA_EQ ;
 int IFF_802_1Q_VLAN ;
 int INIT_WORK (int *,int ) ;
 int RDMA_CM_EVENT_ROUTE_RESOLVED ;
 int RDMA_CM_ROUTE_QUERY ;
 int RDMA_CM_ROUTE_RESOLVED ;
 int cma_work_handler ;
 int cma_wq ;
 int cpu_to_be16 (int) ;
 struct net_device* dev_get_by_index (int *,scalar_t__) ;
 int dev_put (struct net_device*) ;
 int iboe_get_mtu (int ) ;
 int iboe_get_rate (struct net_device*) ;
 int iboe_mac_vlan_to_ll (int *,int ,int ) ;
 int init_net ;
 int kfree (struct cma_work*) ;
 void* kzalloc (int,int ) ;
 int netdev_get_prio_tc_map (struct net_device*,int ) ;
 int queue_work (int ,int *) ;
 int rdma_vlan_dev_vlan_id (struct net_device*) ;
 int rt_tos2priority (int ) ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static int cma_resolve_iboe_route(struct rdma_id_private *id_priv)
{
 struct rdma_route *route = &id_priv->id.route;
 struct rdma_addr *addr = &route->addr;
 struct cma_work *work;
 int ret;
 struct net_device *ndev = ((void*)0);
 u16 vid;

 work = kzalloc(sizeof *work, GFP_KERNEL);
 if (!work)
  return -ENOMEM;

 work->id = id_priv;
 INIT_WORK(&work->work, cma_work_handler);

 route->path_rec = kzalloc(sizeof *route->path_rec, GFP_KERNEL);
 if (!route->path_rec) {
  ret = -ENOMEM;
  goto err1;
 }

 route->num_paths = 1;

 if (addr->dev_addr.bound_dev_if)
  ndev = dev_get_by_index(&init_net, addr->dev_addr.bound_dev_if);
 if (!ndev) {
  ret = -ENODEV;
  goto err2;
 }

 vid = rdma_vlan_dev_vlan_id(ndev);

 iboe_mac_vlan_to_ll(&route->path_rec->sgid, addr->dev_addr.src_dev_addr, vid);
 iboe_mac_vlan_to_ll(&route->path_rec->dgid, addr->dev_addr.dst_dev_addr, vid);

 route->path_rec->hop_limit = 1;
 route->path_rec->reversible = 1;
 route->path_rec->pkey = cpu_to_be16(0xffff);
 route->path_rec->mtu_selector = IB_SA_EQ;
 route->path_rec->sl = netdev_get_prio_tc_map(
   ndev->priv_flags & IFF_802_1Q_VLAN ?
    vlan_dev_real_dev(ndev) : ndev,
   rt_tos2priority(id_priv->tos));

 route->path_rec->mtu = iboe_get_mtu(ndev->mtu);
 route->path_rec->rate_selector = IB_SA_EQ;
 route->path_rec->rate = iboe_get_rate(ndev);
 dev_put(ndev);
 route->path_rec->packet_life_time_selector = IB_SA_EQ;
 route->path_rec->packet_life_time = CMA_IBOE_PACKET_LIFETIME;
 if (!route->path_rec->mtu) {
  ret = -EINVAL;
  goto err2;
 }

 work->old_state = RDMA_CM_ROUTE_QUERY;
 work->new_state = RDMA_CM_ROUTE_RESOLVED;
 work->event.event = RDMA_CM_EVENT_ROUTE_RESOLVED;
 work->event.status = 0;

 queue_work(cma_wq, &work->work);

 return 0;

err2:
 kfree(route->path_rec);
 route->path_rec = ((void*)0);
err1:
 kfree(work);
 return ret;
}
