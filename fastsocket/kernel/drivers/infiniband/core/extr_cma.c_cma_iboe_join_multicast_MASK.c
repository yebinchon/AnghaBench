#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct rdma_dev_addr {scalar_t__ bound_dev_if; } ;
struct TYPE_6__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;
struct TYPE_8__ {scalar_t__ ps; TYPE_2__ route; } ;
struct rdma_id_private {TYPE_3__ id; } ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct TYPE_9__ {int hop_limit; int /*<<< orphan*/  port_gid; int /*<<< orphan*/  mtu; int /*<<< orphan*/  rate; int /*<<< orphan*/  qkey; int /*<<< orphan*/  pkey; int /*<<< orphan*/  mgid; } ;
struct iboe_mcast_work {int /*<<< orphan*/  work; struct cma_multicast* mc; struct rdma_id_private* id; TYPE_4__ rec; } ;
struct ib_sa_multicast {int dummy; } ;
struct TYPE_10__ {struct iboe_mcast_work* ib; } ;
struct cma_multicast {TYPE_5__ multicast; int /*<<< orphan*/  mcref; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ RDMA_PS_UDP ; 
 int /*<<< orphan*/  RDMA_UDP_QKEY ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cma_wq ; 
 scalar_t__ FUNC2 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_dev_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  iboe_mcast_work_handler ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC10 (struct iboe_mcast_work*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct rdma_id_private *id_priv,
				   struct cma_multicast *mc)
{
	struct iboe_mcast_work *work;
	struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
	int err;
	struct sockaddr *addr = (struct sockaddr *)&mc->addr;
	struct net_device *ndev = NULL;

	if (FUNC2((struct sockaddr *)&mc->addr))
		return -EINVAL;

	work = FUNC12(sizeof *work, GFP_KERNEL);
	if (!work)
		return -ENOMEM;

	mc->multicast.ib = FUNC12(sizeof(struct ib_sa_multicast), GFP_KERNEL);
	if (!mc->multicast.ib) {
		err = -ENOMEM;
		goto out1;
	}

	FUNC1(addr, &mc->multicast.ib->rec.mgid);

	mc->multicast.ib->rec.pkey = FUNC3(0xffff);
	if (id_priv->id.ps == RDMA_PS_UDP)
		mc->multicast.ib->rec.qkey = FUNC4(RDMA_UDP_QKEY);

	if (dev_addr->bound_dev_if)
		ndev = FUNC5(&init_net, dev_addr->bound_dev_if);
	if (!ndev) {
		err = -ENODEV;
		goto out2;
	}
	mc->multicast.ib->rec.rate = FUNC9(ndev);
	mc->multicast.ib->rec.hop_limit = 1;
	mc->multicast.ib->rec.mtu = FUNC8(ndev->mtu);
	FUNC6(ndev);
	if (!mc->multicast.ib->rec.mtu) {
		err = -EINVAL;
		goto out2;
	}
	FUNC7(dev_addr, &mc->multicast.ib->rec.port_gid);
	work->id = id_priv;
	work->mc = mc;
	FUNC0(&work->work, iboe_mcast_work_handler);
	FUNC11(&mc->mcref);
	FUNC13(cma_wq, &work->work);

	return 0;

out2:
	FUNC10(mc->multicast.ib);
out1:
	FUNC10(work);
	return err;
}