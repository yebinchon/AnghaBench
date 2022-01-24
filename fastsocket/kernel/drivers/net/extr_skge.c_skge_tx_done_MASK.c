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
typedef  int u32 ;
struct skge_tx_desc {int control; } ;
struct skge_ring {struct skge_element* to_clean; struct skge_element* to_use; } ;
struct skge_port {size_t port; struct skge_ring tx_ring; int /*<<< orphan*/  hw; } ;
struct skge_element {scalar_t__ desc; struct skge_element* next; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int BMU_OWN ; 
 int /*<<< orphan*/  CSR_IRQ_CL_F ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 scalar_t__ TX_LOW_WATER ; 
 struct skge_port* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct skge_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct skge_port*,struct skge_element*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * txqaddr ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	struct skge_port *skge = FUNC1(dev);
	struct skge_ring *ring = &skge->tx_ring;
	struct skge_element *e;

	FUNC8(skge->hw, FUNC0(txqaddr[skge->port], Q_CSR), CSR_IRQ_CL_F);

	for (e = ring->to_clean; e != ring->to_use; e = e->next) {
		u32 control = ((const struct skge_tx_desc *) e->desc)->control;

		if (control & BMU_OWN)
			break;

		FUNC7(skge, e, control);
	}
	skge->tx_ring.to_clean = e;

	/* Can run lockless until we need to synchronize to restart queue. */
	FUNC9();

	if (FUNC10(FUNC2(dev) &&
		     FUNC6(&skge->tx_ring) > TX_LOW_WATER)) {
		FUNC3(dev);
		if (FUNC10(FUNC2(dev) &&
			     FUNC6(&skge->tx_ring) > TX_LOW_WATER)) {
			FUNC5(dev);

		}
		FUNC4(dev);
	}
}