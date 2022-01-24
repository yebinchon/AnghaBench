#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ipoib_dev_priv {int tx_outstanding; int /*<<< orphan*/  flags; int /*<<< orphan*/  ca; } ;
struct ipoib_cm_tx_buf {TYPE_2__* skb; int /*<<< orphan*/  mapping; } ;
struct ipoib_cm_tx {int tx_tail; struct ipoib_cm_tx_buf* tx_ring; TYPE_1__* qp; int /*<<< orphan*/  dev; scalar_t__ tx_head; scalar_t__ id; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int /*<<< orphan*/  qp_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int HZ ; 
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_UP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*,char*,scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_cm_tx*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct ipoib_dev_priv* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct ipoib_cm_tx_buf*) ; 

__attribute__((used)) static void FUNC17(struct ipoib_cm_tx *p)
{
	struct ipoib_dev_priv *priv = FUNC8(p->dev);
	struct ipoib_cm_tx_buf *tx_req;
	unsigned long begin;

	FUNC4(priv, "Destroy active connection 0x%x head 0x%x tail 0x%x\n",
		  p->qp ? p->qp->qp_num : 0, p->tx_head, p->tx_tail);

	if (p->id)
		FUNC1(p->id);

	if (p->tx_ring) {
		/* Wait for all sends to complete */
		begin = jiffies;
		while ((int) p->tx_tail - (int) p->tx_head < 0) {
			if (FUNC14(jiffies, begin + 5 * HZ)) {
				FUNC5(priv, "timing out; %d sends not completed\n",
					   p->tx_head - p->tx_tail);
				goto timeout;
			}

			FUNC7(1);
		}
	}

timeout:

	while ((int) p->tx_tail - (int) p->tx_head < 0) {
		tx_req = &p->tx_ring[p->tx_tail & (ipoib_sendq_size - 1)];
		FUNC3(priv->ca, tx_req->mapping, tx_req->skb->len,
				    DMA_TO_DEVICE);
		FUNC0(tx_req->skb);
		++p->tx_tail;
		FUNC10(p->dev);
		if (FUNC15(--priv->tx_outstanding == ipoib_sendq_size >> 1) &&
		    FUNC9(p->dev) &&
		    FUNC13(IPOIB_FLAG_ADMIN_UP, &priv->flags))
			FUNC12(p->dev);
		FUNC11(p->dev);
	}

	if (p->qp)
		FUNC2(p->qp);

	FUNC16(p->tx_ring);
	FUNC6(p);
}