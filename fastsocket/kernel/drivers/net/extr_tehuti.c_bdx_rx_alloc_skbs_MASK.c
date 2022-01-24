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
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int pktsz; int va; int wptr; int memsz; int /*<<< orphan*/  reg_WPTR; } ;
struct rxf_fifo {TYPE_1__ m; } ;
struct rxf_desc {int va_lo; void* len; void* pa_hi; void* pa_lo; void* info; } ;
struct rxdb {int dummy; } ;
struct rx_map {int /*<<< orphan*/  dma; struct sk_buff* skb; } ;
struct bdx_priv {int /*<<< orphan*/  pdev; int /*<<< orphan*/  ndev; struct rxdb* rxdb; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int NET_IP_ALIGN ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int TXF_WPTR_WR_PTR ; 
 int /*<<< orphan*/  FUNC6 (struct bdx_priv*,int /*<<< orphan*/ ,int) ; 
 struct rx_map* FUNC7 (struct rxdb*,int) ; 
 int FUNC8 (struct rxdb*) ; 
 int FUNC9 (struct rxdb*) ; 
 struct sk_buff* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rxf_desc*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(struct bdx_priv *priv, struct rxf_fifo *f)
{
	struct sk_buff *skb;
	struct rxf_desc *rxfd;
	struct rx_map *dm;
	int dno, delta, idx;
	struct rxdb *db = priv->rxdb;

	ENTER;
	dno = FUNC9(db) - 1;
	while (dno > 0) {
		if (!(skb = FUNC10(f->m.pktsz + NET_IP_ALIGN))) {
			FUNC2("NO MEM: dev_alloc_skb failed\n");
			break;
		}
		skb->dev = priv->ndev;
		FUNC14(skb, NET_IP_ALIGN);

		idx = FUNC8(db);
		dm = FUNC7(db, idx);
		dm->dma = FUNC12(priv->pdev,
					 skb->data, f->m.pktsz,
					 PCI_DMA_FROMDEVICE);
		dm->skb = skb;
		rxfd = (struct rxf_desc *)(f->m.va + f->m.wptr);
		rxfd->info = FUNC0(0x10003);	/* INFO=1 BC=3 */
		rxfd->va_lo = idx;
		rxfd->pa_lo = FUNC0(FUNC4(dm->dma));
		rxfd->pa_hi = FUNC0(FUNC3(dm->dma));
		rxfd->len = FUNC0(f->m.pktsz);
		FUNC13(rxfd);

		f->m.wptr += sizeof(struct rxf_desc);
		delta = f->m.wptr - f->m.memsz;
		if (FUNC15(delta >= 0)) {
			f->m.wptr = delta;
			if (delta > 0) {
				FUNC11(f->m.va, f->m.va + f->m.memsz, delta);
				FUNC1("wrapped descriptor\n");
			}
		}
		dno--;
	}
	/*TBD: to do - delayed rxf wptr like in txd */
	FUNC6(priv, f->m.reg_WPTR, f->m.wptr & TXF_WPTR_WR_PTR);
	FUNC5();
}