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
struct il_rxon_cmd {scalar_t__ channel; } ;
struct il_csa_notification {scalar_t__ channel; int /*<<< orphan*/  status; } ;
struct TYPE_3__ {struct il_csa_notification csa_notif; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct TYPE_4__ {scalar_t__ channel; } ;
struct il_priv {scalar_t__ switch_channel; TYPE_2__ staging; int /*<<< orphan*/  status; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_CHANNEL_SWITCH_PENDING ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct il_rx_pkt* FUNC5 (struct il_rx_buf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC7(struct il_priv *il, struct il_rx_buf *rxb)
{
	struct il_rx_pkt *pkt = FUNC5(rxb);
	struct il_csa_notification *csa = &(pkt->u.csa_notif);
	struct il_rxon_cmd *rxon = (void *)&il->active;

	if (!FUNC6(S_CHANNEL_SWITCH_PENDING, &il->status))
		return;

	if (!FUNC4(csa->status) && csa->channel == il->switch_channel) {
		rxon->channel = csa->channel;
		il->staging.channel = csa->channel;
		FUNC0("CSA notif: channel %d\n", FUNC3(csa->channel));
		FUNC2(il, true);
	} else {
		FUNC1("CSA notif (fail) : channel %d\n",
		       FUNC3(csa->channel));
		FUNC2(il, false);
	}
}