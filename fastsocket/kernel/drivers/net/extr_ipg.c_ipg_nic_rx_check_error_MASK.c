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
struct net_device {int dummy; } ;
struct ipg_rx {scalar_t__ frag_info; scalar_t__ rfs; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_errors; } ;
struct ipg_nic_private {unsigned int rx_current; int /*<<< orphan*/ ** rx_buff; int /*<<< orphan*/  rx_buf_sz; int /*<<< orphan*/  pdev; TYPE_1__ stats; struct ipg_rx* rxd; } ;

/* Variables and functions */
 int ERROR_PACKET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ IPG_DROP_ON_RX_ETH_ERRORS ; 
 unsigned int IPG_RFDLIST_LENGTH ; 
 int IPG_RFI_FRAGLEN ; 
 int IPG_RFS_RXALIGNMENTERROR ; 
 int IPG_RFS_RXFCSERROR ; 
 int IPG_RFS_RXFIFOOVERRUN ; 
 int IPG_RFS_RXLENGTHERROR ; 
 int IPG_RFS_RXOVERSIZEDFRAME ; 
 int IPG_RFS_RXRUNTFRAME ; 
 int NORMAL_PACKET ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 struct ipg_nic_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct ipg_nic_private *sp = FUNC3(dev);
	unsigned int entry = sp->rx_current % IPG_RFDLIST_LENGTH;
	struct ipg_rx *rxfd = sp->rxd + entry;

	if (IPG_DROP_ON_RX_ETH_ERRORS && (FUNC2(rxfd->rfs) &
	     (IPG_RFS_RXFIFOOVERRUN | IPG_RFS_RXRUNTFRAME |
	      IPG_RFS_RXALIGNMENTERROR | IPG_RFS_RXFCSERROR |
	      IPG_RFS_RXOVERSIZEDFRAME | IPG_RFS_RXLENGTHERROR))) {
		FUNC0("Rx error, RFS = %16.16lx\n",
			      (unsigned long) rxfd->rfs);

		/* Increment general receive error statistic. */
		sp->stats.rx_errors++;

		/* Increment detailed receive error statistics. */
		if (FUNC2(rxfd->rfs) & IPG_RFS_RXFIFOOVERRUN) {
			FUNC0("RX FIFO overrun occured.\n");

			sp->stats.rx_fifo_errors++;
		}

		if (FUNC2(rxfd->rfs) & IPG_RFS_RXRUNTFRAME) {
			FUNC0("RX runt occured.\n");
			sp->stats.rx_length_errors++;
		}

		/* Do nothing for IPG_RFS_RXOVERSIZEDFRAME,
		 * error count handled by a IPG statistic register.
		 */

		if (FUNC2(rxfd->rfs) & IPG_RFS_RXALIGNMENTERROR) {
			FUNC0("RX alignment error occured.\n");
			sp->stats.rx_frame_errors++;
		}

		/* Do nothing for IPG_RFS_RXFCSERROR, error count
		 * handled by a IPG statistic register.
		 */

		/* Free the memory associated with the RX
		 * buffer since it is erroneous and we will
		 * not pass it to higher layer processes.
		 */
		if (sp->rx_buff[entry]) {
			FUNC4(sp->pdev,
				FUNC2(rxfd->frag_info) & ~IPG_RFI_FRAGLEN,
				sp->rx_buf_sz, PCI_DMA_FROMDEVICE);

			FUNC1(sp->rx_buff[entry]);
			sp->rx_buff[entry] = NULL;
		}
		return ERROR_PACKET;
	}
	return NORMAL_PACKET;
}