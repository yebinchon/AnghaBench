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
struct ipg_rx {int /*<<< orphan*/  frag_info; } ;
struct ipg_nic_private {int /*<<< orphan*/  rx_buf_sz; int /*<<< orphan*/  pdev; int /*<<< orphan*/ ** rx_buff; struct ipg_rx* rxd; } ;

/* Variables and functions */
 unsigned int IPG_RFDLIST_LENGTH ; 
 int IPG_RFI_FRAGLEN ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ipg_nic_private *sp)
{
	unsigned int i;

	for (i = 0; i < IPG_RFDLIST_LENGTH; i++) {
		if (sp->rx_buff[i]) {
			struct ipg_rx *rxfd = sp->rxd + i;

			FUNC0(sp->rx_buff[i]);
			sp->rx_buff[i] = NULL;
			FUNC2(sp->pdev,
				FUNC1(rxfd->frag_info) & ~IPG_RFI_FRAGLEN,
				sp->rx_buf_sz, PCI_DMA_FROMDEVICE);
		}
	}
}