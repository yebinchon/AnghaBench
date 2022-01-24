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
struct qib_user_sdma_queue {int /*<<< orphan*/  header_cache; } ;
struct qib_user_sdma_pkt {TYPE_1__* addr; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; scalar_t__ kvaddr; scalar_t__ page; scalar_t__ put_page; int /*<<< orphan*/  length; scalar_t__ dma_mapped; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct device *dev,
					struct qib_user_sdma_queue *pq,
					struct qib_user_sdma_pkt *pkt,
					int frag)
{
	const int i = frag;

	if (pkt->addr[i].page) {
		if (pkt->addr[i].dma_mapped)
			FUNC2(dev,
				       pkt->addr[i].addr,
				       pkt->addr[i].length,
				       DMA_TO_DEVICE);

		if (pkt->addr[i].kvaddr)
			FUNC3(pkt->addr[i].page);

		if (pkt->addr[i].put_page)
			FUNC4(pkt->addr[i].page);
		else
			FUNC0(pkt->addr[i].page);
	} else if (pkt->addr[i].kvaddr)
		/* free coherent mem from cache... */
		FUNC1(pq->header_cache,
			      pkt->addr[i].kvaddr, pkt->addr[i].addr);
}