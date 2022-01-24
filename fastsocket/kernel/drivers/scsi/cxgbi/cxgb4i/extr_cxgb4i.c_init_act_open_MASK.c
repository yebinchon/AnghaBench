#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct port_info {int /*<<< orphan*/  port_id; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct cxgbi_sock {size_t port_id; scalar_t__ atid; int smac_idx; unsigned int txq_idx; int /*<<< orphan*/  l2t; int /*<<< orphan*/  mss_idx; scalar_t__ mtu; int /*<<< orphan*/  rss_qid; int /*<<< orphan*/  tx_chan; scalar_t__ err; scalar_t__ wr_una_cred; int /*<<< orphan*/  wr_cred; int /*<<< orphan*/  wr_max_cred; TYPE_1__* dst; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; struct cxgbi_device* cdev; } ;
struct cxgbi_device {struct net_device** ports; } ;
struct cxgb4_lld_info {unsigned int ntxq; unsigned int nchan; unsigned int nrxq; int /*<<< orphan*/  wr_cred; int /*<<< orphan*/ * rxq_ids; int /*<<< orphan*/  mtus; int /*<<< orphan*/  l2t; int /*<<< orphan*/  tids; } ;
struct cpl_act_open_req {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  neighbour; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_HAS_ATID ; 
 int /*<<< orphan*/  CTP_ACTIVE_OPEN ; 
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 unsigned int FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 struct cxgb4_lld_info* FUNC8 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  cxgbi_sock_act_open_req_arp_failure ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct port_info* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct cxgbi_sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct cxgbi_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct cxgbi_sock *csk)
{
	struct cxgbi_device *cdev = csk->cdev;
	struct cxgb4_lld_info *lldi = FUNC8(cdev);
	struct net_device *ndev = cdev->ports[csk->port_id];
	struct port_info *pi = FUNC15(ndev);
	struct sk_buff *skb = NULL;
	unsigned int step;

	FUNC14(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,0x%lx,%u.\n",
		csk, csk->state, csk->flags, csk->tid);

	csk->atid = FUNC2(lldi->tids, csk);
	if (csk->atid < 0) {
		FUNC16("%s, NO atid available.\n", ndev->name);
		return -EINVAL;
	}
	FUNC11(csk, CTPF_HAS_ATID);
	FUNC9(csk);

	csk->l2t = FUNC4(lldi->l2t, csk->dst->neighbour, ndev, 0);
	if (!csk->l2t) {
		FUNC16("%s, cannot alloc l2t.\n", ndev->name);
		goto rel_resource;
	}
	FUNC9(csk);

	skb = FUNC1(sizeof(struct cpl_act_open_req), 0, GFP_KERNEL);
	if (!skb)
		goto rel_resource;
	skb->sk = (struct sock *)csk;
	FUNC18(skb, csk, cxgbi_sock_act_open_req_arp_failure);

	if (!csk->mtu)
		csk->mtu = FUNC13(csk->dst);
	FUNC3(lldi->mtus, csk->mtu, &csk->mss_idx);
	csk->tx_chan = FUNC5(ndev);
	/* SMT two entries per row */
	csk->smac_idx = ((FUNC7(ndev) & 0x7F)) << 1;
	step = lldi->ntxq / lldi->nchan;
	csk->txq_idx = FUNC6(ndev) * step;
	step = lldi->nrxq / lldi->nchan;
	csk->rss_qid = lldi->rxq_ids[FUNC6(ndev) * step];
	csk->wr_max_cred = csk->wr_cred = lldi->wr_cred;
	csk->wr_una_cred = 0;
	FUNC10(csk);
	csk->err = 0;
	FUNC14(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,p%d,%s, %u,%u,%u, mss %u,%u, smac %u.\n",
		csk, pi->port_id, ndev->name, csk->tx_chan,
		csk->txq_idx, csk->rss_qid, csk->mtu, csk->mss_idx,
		csk->smac_idx);

	FUNC12(csk, CTP_ACTIVE_OPEN);
	FUNC17(csk, skb, csk->l2t);
	return 0;

rel_resource:
	if (skb)
		FUNC0(skb);
	return -EINVAL;
}