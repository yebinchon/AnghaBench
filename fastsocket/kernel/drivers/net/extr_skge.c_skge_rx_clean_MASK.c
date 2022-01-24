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
struct skge_rx_desc {scalar_t__ control; } ;
struct skge_ring {struct skge_element* start; } ;
struct skge_port {struct skge_ring rx_ring; struct skge_hw* hw; } ;
struct skge_hw {int /*<<< orphan*/  pdev; } ;
struct skge_element {int /*<<< orphan*/ * skb; struct skge_rx_desc* desc; struct skge_element* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  maplen ; 
 int /*<<< orphan*/  FUNC1 (struct skge_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct skge_port *skge)
{
	struct skge_hw *hw = skge->hw;
	struct skge_ring *ring = &skge->rx_ring;
	struct skge_element *e;

	e = ring->start;
	do {
		struct skge_rx_desc *rd = e->desc;
		rd->control = 0;
		if (e->skb) {
			FUNC3(hw->pdev,
					 FUNC1(e, mapaddr),
					 FUNC2(e, maplen),
					 PCI_DMA_FROMDEVICE);
			FUNC0(e->skb);
			e->skb = NULL;
		}
	} while ((e = e->next) != ring->start);
}