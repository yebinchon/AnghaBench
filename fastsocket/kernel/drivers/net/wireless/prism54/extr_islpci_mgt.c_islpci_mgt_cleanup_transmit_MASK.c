#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct islpci_membuf {scalar_t__ size; int /*<<< orphan*/ * mem; scalar_t__ pci_addr; } ;
struct TYPE_4__ {int index_mgmt_tx; int /*<<< orphan*/  pdev; struct islpci_membuf* mgmt_tx; scalar_t__ control_block; } ;
typedef  TYPE_1__ islpci_private ;
struct TYPE_5__ {int /*<<< orphan*/ * device_curr_frag; } ;
typedef  TYPE_2__ isl38xx_control_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ISL38XX_CB_MGMT_QSIZE ; 
 size_t ISL38XX_CB_TX_MGMTQ ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  SHOW_FUNCTION_CALLS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC6(struct net_device *ndev)
{
	islpci_private *priv = FUNC4(ndev);
	isl38xx_control_block *cb =	/* volatile not needed */
	    (isl38xx_control_block *) priv->control_block;
	u32 curr_frag;

#if VERBOSE > SHOW_ERROR_MESSAGES
	DEBUG(SHOW_FUNCTION_CALLS, "islpci_mgt_cleanup_transmit\n");
#endif

	/* Only once per cleanup, determine fragment range to
	 * process.  This avoids an endless loop (i.e. lockup) if
	 * the device became confused, incrementing device_curr_frag
	 * rapidly. */
	curr_frag = FUNC3(cb->device_curr_frag[ISL38XX_CB_TX_MGMTQ]);
	FUNC1();

	for (; priv->index_mgmt_tx < curr_frag; priv->index_mgmt_tx++) {
		int index = priv->index_mgmt_tx % ISL38XX_CB_MGMT_QSIZE;
		struct islpci_membuf *buf = &priv->mgmt_tx[index];
		FUNC5(priv->pdev, buf->pci_addr, buf->size,
				 PCI_DMA_TODEVICE);
		buf->pci_addr = 0;
		FUNC2(buf->mem);
		buf->mem = NULL;
		buf->size = 0;
	}
}