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
struct sk_buff {int dummy; } ;
struct ipw_tty {int dummy; } ;
struct ipw_network {int ras_control_lines; int /*<<< orphan*/  close_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/ * ppp_channel; struct ipw_tty*** associated_ttys; } ;

/* Variables and functions */
 unsigned int IPW_CHANNEL_RAS ; 
 int IPW_CONTROL_LINE_DCD ; 
 int MAX_ASSOCIATED_TTYS ; 
 struct sk_buff* FUNC0 (unsigned char*,unsigned int) ; 
 scalar_t__ FUNC1 (struct ipw_tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_tty*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct ipw_network *network,
					unsigned int channel_idx,
					unsigned char *data,
					unsigned int length)
{
	int i;
	unsigned long flags;

	for (i = 0; i < MAX_ASSOCIATED_TTYS; i++) {
		struct ipw_tty *tty = network->associated_ttys[channel_idx][i];

		if (!tty)
			continue;

		/*
		 * If it's associated with a tty (other than the RAS channel
		 * when we're online), then send the data to that tty.  The RAS
		 * channel's data is handled above - it always goes through
		 * ppp_generic.
		 */
		if (channel_idx == IPW_CHANNEL_RAS
				&& (network->ras_control_lines &
					IPW_CONTROL_LINE_DCD) != 0
				&& FUNC1(tty)) {
			/*
			 * If data came in on the RAS channel and this tty is
			 * the modem tty, and we are online, then we send it to
			 * the PPP layer.
			 */
			FUNC3(&network->close_lock);
			FUNC6(&network->lock, flags);
			if (network->ppp_channel != NULL) {
				struct sk_buff *skb;

				FUNC7(&network->lock,
						flags);

				/* Send the data to the ppp_generic module. */
				skb = FUNC0(data, length);
				FUNC5(network->ppp_channel, skb);
			} else
				FUNC7(&network->lock,
						flags);
			FUNC4(&network->close_lock);
		}
		/* Otherwise we send it out the tty. */
		else
			FUNC2(tty, data, length);
	}
}