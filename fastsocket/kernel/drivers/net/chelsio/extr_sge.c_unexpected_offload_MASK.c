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
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct freelQ_ce {struct sk_buff* skb; } ;
struct freelQ {size_t cidx; struct freelQ_ce* centries; } ;
struct adapter {int /*<<< orphan*/  name; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  dma_len ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct freelQ_ce*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct freelQ_ce*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct freelQ*,size_t) ; 

__attribute__((used)) static void FUNC5(struct adapter *adapter, struct freelQ *fl)
{
	struct freelQ_ce *ce = &fl->centries[fl->cidx];
	struct sk_buff *skb = ce->skb;

	FUNC1(adapter->pdev, FUNC2(ce, dma_addr),
			    FUNC3(ce, dma_len), PCI_DMA_FROMDEVICE);
	FUNC0("%s: unexpected offload packet, cmd %u\n",
	       adapter->name, *skb->data);
	FUNC4(fl, fl->cidx);
}