#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  txtime ;
typedef  int /*<<< orphan*/  timestamps ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  len; } ;
struct efx_nic {TYPE_1__* ptp_data; } ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;
struct TYPE_3__ {int /*<<< orphan*/ * txbuf; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MC_CMD_PTP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t MC_CMD_PTP_IN_TRANSMIT_PACKET_OFST ; 
 int /*<<< orphan*/  MC_CMD_PTP_OP_TRANSMIT ; 
 int MC_CMD_PTP_OUT_TRANSMIT_LEN ; 
 int /*<<< orphan*/  PTP_IN_OP ; 
 int /*<<< orphan*/  PTP_IN_TRANSMIT_LENGTH ; 
 int /*<<< orphan*/  PTP_OUT_TRANSMIT_NANOSECONDS ; 
 int /*<<< orphan*/  PTP_OUT_TRANSMIT_SECONDS ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC10 (struct sk_buff*) ; 
 TYPE_2__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 

__attribute__((used)) static int FUNC13(struct efx_nic *efx, struct sk_buff *skb)
{
	u8 *txbuf = efx->ptp_data->txbuf;
	struct skb_shared_hwtstamps timestamps;
	int rc = -EIO;
	/* MCDI driver requires word aligned lengths */
	size_t len = FUNC0(FUNC3(skb->len), 4);
	u8 txtime[MC_CMD_PTP_OUT_TRANSMIT_LEN];

	FUNC2(txbuf, PTP_IN_OP, MC_CMD_PTP_OP_TRANSMIT);
	FUNC2(txbuf, PTP_IN_TRANSMIT_LENGTH, skb->len);
	if (FUNC11(skb)->nr_frags != 0) {
		rc = FUNC10(skb);
		if (rc != 0)
			goto fail;
	}

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		rc = FUNC8(skb);
		if (rc != 0)
			goto fail;
	}
	FUNC9(skb,
				  &txbuf[MC_CMD_PTP_IN_TRANSMIT_PACKET_OFST],
				  len);
	rc = FUNC5(efx, MC_CMD_PTP, txbuf, len, txtime,
			  sizeof(txtime), &len);
	if (rc != 0)
		goto fail;

	FUNC7(&timestamps, 0, sizeof(timestamps));
	timestamps.hwtstamp = FUNC6(
		FUNC1(txtime, PTP_OUT_TRANSMIT_SECONDS),
		FUNC1(txtime, PTP_OUT_TRANSMIT_NANOSECONDS));

	FUNC12(skb, &timestamps);

	rc = 0;

fail:
	FUNC4(skb);

	return rc;
}