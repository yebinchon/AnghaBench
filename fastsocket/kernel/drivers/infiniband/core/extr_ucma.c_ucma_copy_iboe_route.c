
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct rdma_ucm_query_route_resp {int num_paths; TYPE_2__* ib_route; } ;
struct rdma_dev_addr {int dst_dev_addr; int bound_dev_if; } ;
struct TYPE_3__ {struct rdma_dev_addr dev_addr; } ;
struct rdma_route {int num_paths; int * path_rec; TYPE_1__ addr; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int pkey; int sgid; int dgid; } ;


 int cpu_to_be16 (int) ;
 struct net_device* dev_get_by_index (int *,int ) ;
 int dev_put (struct net_device*) ;
 int ib_copy_path_rec_to_user (TYPE_2__*,int *) ;
 int iboe_addr_get_sgid (struct rdma_dev_addr*,union ib_gid*) ;
 int iboe_mac_vlan_to_ll (union ib_gid*,int ,int ) ;
 int init_net ;
 int rdma_vlan_dev_vlan_id (struct net_device*) ;

__attribute__((used)) static void ucma_copy_iboe_route(struct rdma_ucm_query_route_resp *resp,
     struct rdma_route *route)
{
 struct rdma_dev_addr *dev_addr;
 struct net_device *dev;
 u16 vid = 0;

 resp->num_paths = route->num_paths;
 switch (route->num_paths) {
 case 0:
  dev_addr = &route->addr.dev_addr;
  dev = dev_get_by_index(&init_net, dev_addr->bound_dev_if);
   if (dev) {
    vid = rdma_vlan_dev_vlan_id(dev);
    dev_put(dev);
   }

  iboe_mac_vlan_to_ll((union ib_gid *) &resp->ib_route[0].dgid,
        dev_addr->dst_dev_addr, vid);
  iboe_addr_get_sgid(dev_addr,
       (union ib_gid *) &resp->ib_route[0].sgid);
  resp->ib_route[0].pkey = cpu_to_be16(0xffff);
  break;
 case 2:
  ib_copy_path_rec_to_user(&resp->ib_route[1],
      &route->path_rec[1]);

 case 1:
  ib_copy_path_rec_to_user(&resp->ib_route[0],
      &route->path_rec[0]);
  break;
 default:
  break;
 }
}
