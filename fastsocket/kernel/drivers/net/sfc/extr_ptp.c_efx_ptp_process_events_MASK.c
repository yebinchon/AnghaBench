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
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct efx_ptp_match {scalar_t__ state; int /*<<< orphan*/  expiry; } ;
struct efx_ptp_data {int /*<<< orphan*/  rxq; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; struct efx_ptp_data* ptp_data; } ;

/* Variables and functions */
 scalar_t__ PTP_PACKET_STATE_MATCHED ; 
 scalar_t__ PTP_PACKET_STATE_MATCH_UNWANTED ; 
 scalar_t__ PTP_PACKET_STATE_TIMED_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct efx_nic*,struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rx_err ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct efx_nic *efx, struct sk_buff_head *q)
{
	struct efx_ptp_data *ptp = efx->ptp_data;
	bool rc = false;
	struct sk_buff *skb;

	while ((skb = FUNC3(&ptp->rxq))) {
		struct efx_ptp_match *match;

		match = (struct efx_ptp_match *)skb->cb;
		if (match->state == PTP_PACKET_STATE_MATCH_UNWANTED) {
			FUNC0(q, skb);
		} else if (FUNC1(efx, skb) ==
			   PTP_PACKET_STATE_MATCHED) {
			rc = true;
			FUNC0(q, skb);
		} else if (FUNC5(jiffies, match->expiry)) {
			match->state = PTP_PACKET_STATE_TIMED_OUT;
			FUNC2(efx, rx_err, efx->net_dev,
				   "PTP packet - no timestamp seen\n");
			FUNC0(q, skb);
		} else {
			/* Replace unprocessed entry and stop */
			FUNC4(&ptp->rxq, skb);
			break;
		}
	}

	return rc;
}