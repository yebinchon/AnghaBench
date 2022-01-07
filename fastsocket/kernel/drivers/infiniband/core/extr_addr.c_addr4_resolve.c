
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {void* s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_13__ {int neighbour; } ;
struct TYPE_14__ {TYPE_5__ dst; } ;
struct rtable {TYPE_6__ u; TYPE_4__* idev; int rt_gateway; void* rt_src; } ;
struct rdma_dev_addr {int src_dev_addr; int dst_dev_addr; int bound_dev_if; } ;
struct neighbour {int nud_state; int * ha; TYPE_7__* dev; } ;
struct TYPE_9__ {void* saddr; void* daddr; } ;
struct TYPE_10__ {TYPE_1__ ip4_u; } ;
struct flowi {int oif; TYPE_2__ nl_u; } ;
typedef void* __be32 ;
struct TYPE_15__ {int flags; } ;
struct TYPE_12__ {TYPE_7__* dev; } ;


 int AF_INET ;
 int ENODATA ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int MAX_ADDR_LEN ;
 int NUD_VALID ;
 int arp_tbl ;
 int init_net ;
 int ip_route_output_key (int *,struct rtable**,struct flowi*) ;
 int ip_rt_put (struct rtable*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct flowi*,int ,int) ;
 int neigh_event_send (int ,int *) ;
 struct neighbour* neigh_lookup (int *,int *,TYPE_7__*) ;
 int neigh_release (struct neighbour*) ;
 int rdma_copy_addr (struct rdma_dev_addr*,TYPE_7__*,int *) ;
 int rdma_translate_ip (struct sockaddr*,struct rdma_dev_addr*) ;

__attribute__((used)) static int addr4_resolve(struct sockaddr_in *src_in,
    struct sockaddr_in *dst_in,
    struct rdma_dev_addr *addr)
{
 __be32 src_ip = src_in->sin_addr.s_addr;
 __be32 dst_ip = dst_in->sin_addr.s_addr;
 struct flowi fl;
 struct rtable *rt;
 struct neighbour *neigh;
 int ret;

 memset(&fl, 0, sizeof fl);
 fl.nl_u.ip4_u.daddr = dst_ip;
 fl.nl_u.ip4_u.saddr = src_ip;
 fl.oif = addr->bound_dev_if;

 ret = ip_route_output_key(&init_net, &rt, &fl);
 if (ret)
  goto out;

 src_in->sin_family = AF_INET;
 src_in->sin_addr.s_addr = rt->rt_src;

 if (rt->idev->dev->flags & IFF_LOOPBACK) {
  ret = rdma_translate_ip((struct sockaddr *) dst_in, addr);
  if (!ret)
   memcpy(addr->dst_dev_addr, addr->src_dev_addr, MAX_ADDR_LEN);
  goto put;
 }


 if (rt->idev->dev->flags & IFF_NOARP) {
  rdma_copy_addr(addr, rt->idev->dev, ((void*)0));
  goto put;
 }

 neigh = neigh_lookup(&arp_tbl, &rt->rt_gateway, rt->idev->dev);
 if (!neigh || !(neigh->nud_state & NUD_VALID)) {
  neigh_event_send(rt->u.dst.neighbour, ((void*)0));
  ret = -ENODATA;
  if (neigh)
   goto release;
  goto put;
 }

 ret = rdma_copy_addr(addr, neigh->dev, neigh->ha);
release:
 neigh_release(neigh);
put:
 ip_rt_put(rt);
out:
 return ret;
}
