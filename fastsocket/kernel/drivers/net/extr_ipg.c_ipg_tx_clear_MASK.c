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
struct ipg_tx {int /*<<< orphan*/  frag_info; } ;
struct ipg_nic_private {TYPE_1__** tx_buff; int /*<<< orphan*/  pdev; struct ipg_tx* txd; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 unsigned int IPG_TFDLIST_LENGTH ; 
 int IPG_TFI_FRAGLEN ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ipg_nic_private *sp)
{
	unsigned int i;

	for (i = 0; i < IPG_TFDLIST_LENGTH; i++) {
		if (sp->tx_buff[i]) {
			struct ipg_tx *txfd = sp->txd + i;

			FUNC2(sp->pdev,
				FUNC1(txfd->frag_info) & ~IPG_TFI_FRAGLEN,
				sp->tx_buff[i]->len, PCI_DMA_TODEVICE);

			FUNC0(sp->tx_buff[i]);

			sp->tx_buff[i] = NULL;
		}
	}
}