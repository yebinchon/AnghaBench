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
struct jme_adapter {int reg_rxcs; int rx_ring_size; int /*<<< orphan*/  dev; TYPE_1__* rxring; } ;
typedef  int __u64 ;
struct TYPE_2__ {scalar_t__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_RXCS ; 
 int /*<<< orphan*/  JME_RXDBA_HI ; 
 int /*<<< orphan*/  JME_RXDBA_LO ; 
 int /*<<< orphan*/  JME_RXNDA ; 
 int /*<<< orphan*/  JME_RXQDC ; 
 int RXCS_ENABLE ; 
 int RXCS_QST ; 
 int RXCS_QUEUESEL_Q0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void
FUNC3(struct jme_adapter *jme)
{
	/*
	 * Select Queue 0
	 */
	FUNC1(jme, JME_RXCS, jme->reg_rxcs |
				RXCS_QUEUESEL_Q0);
	FUNC2();

	/*
	 * Setup RX DMA Bass Address
	 */
	FUNC1(jme, JME_RXDBA_LO, (__u64)(jme->rxring[0].dma) & 0xFFFFFFFFUL);
	FUNC1(jme, JME_RXDBA_HI, (__u64)(jme->rxring[0].dma) >> 32);
	FUNC1(jme, JME_RXNDA, (__u64)(jme->rxring[0].dma) & 0xFFFFFFFFUL);

	/*
	 * Setup RX Descriptor Count
	 */
	FUNC1(jme, JME_RXQDC, jme->rx_ring_size);

	/*
	 * Setup Unicast Filter
	 */
	FUNC0(jme->dev);

	/*
	 * Enable RX Engine
	 */
	FUNC2();
	FUNC1(jme, JME_RXCS, jme->reg_rxcs |
				RXCS_QUEUESEL_Q0 |
				RXCS_ENABLE |
				RXCS_QST);
}