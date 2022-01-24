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
struct jme_ring {struct jme_buffer_info* bufinf; } ;
struct jme_buffer_info {scalar_t__ len; scalar_t__ mapping; int /*<<< orphan*/ * skb; } ;
struct jme_adapter {int /*<<< orphan*/  pdev; struct jme_ring* rxring; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct jme_adapter *jme, int i)
{
	struct jme_ring *rxring = &(jme->rxring[0]);
	struct jme_buffer_info *rxbi = rxring->bufinf;
	rxbi += i;

	if (rxbi->skb) {
		FUNC1(jme->pdev,
				 rxbi->mapping,
				 rxbi->len,
				 PCI_DMA_FROMDEVICE);
		FUNC0(rxbi->skb);
		rxbi->skb = NULL;
		rxbi->mapping = 0;
		rxbi->len = 0;
	}
}