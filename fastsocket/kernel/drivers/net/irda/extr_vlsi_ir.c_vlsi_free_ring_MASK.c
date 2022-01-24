#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlsi_ring {unsigned int size; int /*<<< orphan*/  dir; int /*<<< orphan*/  len; int /*<<< orphan*/  pdev; struct ring_descr* rd; } ;
struct ring_descr {struct vlsi_ring* buf; scalar_t__ skb; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vlsi_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ring_descr*) ; 
 int /*<<< orphan*/  FUNC4 (struct ring_descr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vlsi_ring *r)
{
	struct ring_descr *rd;
	unsigned	i;
	dma_addr_t	busaddr;

	for (i = 0; i < r->size; i++) {
		rd = r->rd + i;
		if (rd->skb)
			FUNC0(rd->skb);
		busaddr = FUNC3(rd);
		FUNC4(rd, 0, 0);
		if (busaddr)
			FUNC2(r->pdev, busaddr, r->len, r->dir);
		FUNC1(rd->buf);
	}
	FUNC1(r);
	return 0;
}