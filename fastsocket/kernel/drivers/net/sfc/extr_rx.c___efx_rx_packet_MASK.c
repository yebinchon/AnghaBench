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
typedef  int /*<<< orphan*/  u8 ;
struct efx_rx_buffer {int flags; int /*<<< orphan*/  len; } ;
struct efx_nic {int loopback_selftest; int /*<<< orphan*/  rx_checksum_enabled; } ;
struct efx_channel {int /*<<< orphan*/  rx_pkt_n_frags; TYPE_1__* type; int /*<<< orphan*/  rx_pkt_index; int /*<<< orphan*/  rx_queue; struct efx_nic* efx; } ;
struct TYPE_2__ {int /*<<< orphan*/  receive_skb; } ;

/* Variables and functions */
 int EFX_RX_PKT_CSUMMED ; 
 int EFX_RX_PKT_TCP ; 
 int /*<<< orphan*/  FUNC0 (struct efx_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct efx_rx_buffer*) ; 
 struct efx_rx_buffer* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_channel*,int /*<<< orphan*/ *,struct efx_rx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_channel*,struct efx_rx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct efx_channel *channel)
{
	struct efx_nic *efx = channel->efx;
	struct efx_rx_buffer *rx_buf =
		FUNC3(&channel->rx_queue, channel->rx_pkt_index);
	u8 *eh = FUNC2(rx_buf);

	/* If we're in loopback test, then pass the packet directly to the
	 * loopback layer, and free the rx_buf here
	 */
	if (FUNC6(efx->loopback_selftest)) {
		FUNC1(efx, eh, rx_buf->len);
		FUNC0(rx_buf);
		goto out;
	}

	if (FUNC6(!efx->rx_checksum_enabled))
		rx_buf->flags &= ~EFX_RX_PKT_CSUMMED;

	if ((rx_buf->flags & EFX_RX_PKT_TCP) && !channel->type->receive_skb)
		FUNC5(channel, rx_buf, channel->rx_pkt_n_frags, eh);
	else
		FUNC4(channel, eh, rx_buf, channel->rx_pkt_n_frags);
out:
	channel->rx_pkt_n_frags = 0;
}