#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int /*<<< orphan*/  dst_dev_addr; int /*<<< orphan*/  src_dev_addr; scalar_t__ bound_dev_if; } ;
struct rdma_addr {TYPE_2__ dev_addr; } ;
struct rdma_route {int num_paths; struct cma_work* path_rec; struct rdma_addr addr; } ;
struct TYPE_4__ {struct rdma_route route; } ;
struct rdma_id_private {int /*<<< orphan*/  tos; TYPE_1__ id; } ;
struct net_device {int priv_flags; int /*<<< orphan*/  mtu; } ;
struct TYPE_6__ {scalar_t__ status; int /*<<< orphan*/  event; } ;
struct cma_work {int hop_limit; int reversible; int /*<<< orphan*/  work; TYPE_3__ event; int /*<<< orphan*/  new_state; int /*<<< orphan*/  old_state; int /*<<< orphan*/  mtu; int /*<<< orphan*/  packet_life_time; void* packet_life_time_selector; int /*<<< orphan*/  rate; void* rate_selector; int /*<<< orphan*/  sl; void* mtu_selector; int /*<<< orphan*/  pkey; int /*<<< orphan*/  dgid; int /*<<< orphan*/  sgid; struct rdma_id_private* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMA_IBOE_PACKET_LIFETIME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* IB_SA_EQ ; 
 int IFF_802_1Q_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_ROUTE_RESOLVED ; 
 int /*<<< orphan*/  RDMA_CM_ROUTE_QUERY ; 
 int /*<<< orphan*/  RDMA_CM_ROUTE_RESOLVED ; 
 int /*<<< orphan*/  cma_work_handler ; 
 int /*<<< orphan*/  cma_wq ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC7 (struct cma_work*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC13 (struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct rdma_id_private *id_priv)
{
	struct rdma_route *route = &id_priv->id.route;
	struct rdma_addr *addr = &route->addr;
	struct cma_work *work;
	int ret;
	struct net_device *ndev = NULL;
	u16 vid;

	work = FUNC8(sizeof *work, GFP_KERNEL);
	if (!work)
		return -ENOMEM;

	work->id = id_priv;
	FUNC0(&work->work, cma_work_handler);

	route->path_rec = FUNC8(sizeof *route->path_rec, GFP_KERNEL);
	if (!route->path_rec) {
		ret = -ENOMEM;
		goto err1;
	}

	route->num_paths = 1;

	if (addr->dev_addr.bound_dev_if)
		ndev = FUNC2(&init_net, addr->dev_addr.bound_dev_if);
	if (!ndev) {
		ret = -ENODEV;
		goto err2;
	}

	vid = FUNC11(ndev);

	FUNC6(&route->path_rec->sgid, addr->dev_addr.src_dev_addr, vid);
	FUNC6(&route->path_rec->dgid, addr->dev_addr.dst_dev_addr, vid);

	route->path_rec->hop_limit = 1;
	route->path_rec->reversible = 1;
	route->path_rec->pkey = FUNC1(0xffff);
	route->path_rec->mtu_selector = IB_SA_EQ;
	route->path_rec->sl = FUNC9(
			ndev->priv_flags & IFF_802_1Q_VLAN ?
				FUNC13(ndev) : ndev,
			FUNC12(id_priv->tos));

	route->path_rec->mtu = FUNC4(ndev->mtu);
	route->path_rec->rate_selector = IB_SA_EQ;
	route->path_rec->rate = FUNC5(ndev);
	FUNC3(ndev);
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

	FUNC10(cma_wq, &work->work);

	return 0;

err2:
	FUNC7(route->path_rec);
	route->path_rec = NULL;
err1:
	FUNC7(work);
	return ret;
}