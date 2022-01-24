#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct rdma_dev_addr {int dummy; } ;
struct TYPE_5__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct TYPE_7__ {scalar_t__ ps; int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; TYPE_2__ route; } ;
struct rdma_id_private {TYPE_3__ id; int /*<<< orphan*/  qkey; } ;
struct ib_sa_mcmember_rec {int join_state; int /*<<< orphan*/  pkey; int /*<<< orphan*/  port_gid; int /*<<< orphan*/  qkey; int /*<<< orphan*/  mgid; } ;
struct TYPE_8__ {int /*<<< orphan*/  ib; } ;
struct cma_multicast {TYPE_4__ multicast; int /*<<< orphan*/  addr; } ;
typedef  int ib_sa_comp_mask ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RDMA_PS_IPOIB ; 
 int /*<<< orphan*/  cma_ib_mc_handler ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_id_private*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_dev_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_dev_addr*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_sa_mcmember_rec*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_sa_mcmember_rec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cma_multicast*) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_dev_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sa_client ; 

__attribute__((used)) static int FUNC11(struct rdma_id_private *id_priv,
				 struct cma_multicast *mc)
{
	struct ib_sa_mcmember_rec rec;
	struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
	ib_sa_comp_mask comp_mask;
	int ret;

	FUNC6(dev_addr, &rec.mgid);
	ret = FUNC8(id_priv->id.device, id_priv->id.port_num,
				     &rec.mgid, &rec);
	if (ret)
		return ret;

	ret = FUNC3(id_priv, 0);
	if (ret)
		return ret;

	FUNC2(id_priv, (struct sockaddr *) &mc->addr, &rec.mgid);
	rec.qkey = FUNC5(id_priv->qkey);
	FUNC10(dev_addr, &rec.port_gid);
	rec.pkey = FUNC4(FUNC7(dev_addr));
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

	mc->multicast.ib = FUNC9(&sa_client, id_priv->id.device,
						id_priv->id.port_num, &rec,
						comp_mask, GFP_KERNEL,
						cma_ib_mc_handler, mc);
	if (FUNC0(mc->multicast.ib))
		return FUNC1(mc->multicast.ib);

	return 0;
}