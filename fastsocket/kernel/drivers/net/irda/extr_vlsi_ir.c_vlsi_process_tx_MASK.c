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
typedef  int u16 ;
struct vlsi_ring {int /*<<< orphan*/  dir; int /*<<< orphan*/  len; int /*<<< orphan*/  pdev; } ;
struct ring_descr {TYPE_1__* skb; } ;
struct TYPE_2__ {int len; } ;

/* Variables and functions */
 int RD_TX_UNDRN ; 
 int VLSI_TX_FIFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_descr*) ; 
 int FUNC3 (struct ring_descr*) ; 
 int FUNC4 (struct ring_descr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_descr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ring_descr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct vlsi_ring *r, struct ring_descr *rd)
{
	u16		status;
	int		len;
	int		ret;

	FUNC1(r->pdev, FUNC2(rd), r->len, r->dir);
	/* dma buffer now owned by the CPU */
	status = FUNC4(rd);
	if (status & RD_TX_UNDRN)
		ret = VLSI_TX_FIFO;
	else
		ret = 0;
	FUNC6(rd, 0);

	if (rd->skb) {
		len = rd->skb->len;
		FUNC0(rd->skb);
		rd->skb = NULL;
	}
	else	/* tx-skb already freed? - should never happen */
		len = FUNC3(rd);		/* incorrect for SIR! (due to wrapping) */

	FUNC5(rd, 0);
	/* dma buffer still owned by the CPU */

	return (ret) ? -ret : len;
}