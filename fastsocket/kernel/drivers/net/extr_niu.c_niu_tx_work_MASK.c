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
typedef  int u64 ;
typedef  int u16 ;
struct tx_ring_info {int tx_cs; int last_pkt_cnt; int cons; } ;
struct niu {TYPE_1__* dev; struct tx_ring_info* tx_rings; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tx_ring_info*) ; 
 int TX_CS_MK ; 
 int TX_CS_MMK ; 
 int TX_CS_PKT_CNT ; 
 int TX_CS_PKT_CNT_SHIFT ; 
 int /*<<< orphan*/  TX_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 struct netdev_queue* FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct netdev_queue*) ; 
 scalar_t__ FUNC6 (struct tx_ring_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct niu*,struct tx_ring_info*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct niu *np, struct tx_ring_info *rp)
{
	struct netdev_queue *txq;
	u16 pkt_cnt, tmp;
	int cons, index;
	u64 cs;

	index = (rp - np->tx_rings);
	txq = FUNC3(np->dev, index);

	cs = rp->tx_cs;
	if (FUNC11(!(cs & (TX_CS_MK | TX_CS_MMK))))
		goto out;

	tmp = pkt_cnt = (cs & TX_CS_PKT_CNT) >> TX_CS_PKT_CNT_SHIFT;
	pkt_cnt = (pkt_cnt - rp->last_pkt_cnt) &
		(TX_CS_PKT_CNT >> TX_CS_PKT_CNT_SHIFT);

	rp->last_pkt_cnt = tmp;

	cons = rp->cons;

	FUNC7(TX_DONE, "%s: niu_tx_work() pkt_cnt[%u] cons[%d]\n",
	       np->dev->name, pkt_cnt, cons);

	while (pkt_cnt--)
		cons = FUNC8(np, rp, cons);

	rp->cons = cons;
	FUNC9();

out:
	if (FUNC11(FUNC4(txq) &&
		     (FUNC6(rp) > FUNC0(rp)))) {
		FUNC1(txq, FUNC10());
		if (FUNC4(txq) &&
		    (FUNC6(rp) > FUNC0(rp)))
			FUNC5(txq);
		FUNC2(txq);
	}
}