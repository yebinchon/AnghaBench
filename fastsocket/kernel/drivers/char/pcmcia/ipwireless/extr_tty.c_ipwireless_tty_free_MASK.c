#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ipw_tty {size_t index; int closing; int /*<<< orphan*/  ipw_tty_mutex; int /*<<< orphan*/  channel_idx; scalar_t__ open_count; int /*<<< orphan*/ * linux_tty; struct ipw_network* network; } ;
struct ipw_network {int dummy; } ;
struct TYPE_3__ {scalar_t__ minor_start; } ;

/* Variables and functions */
 int IPWIRELESS_PCMCIA_MINORS ; 
 scalar_t__ IPWIRELESS_PCMCIA_MINOR_RANGE ; 
 int /*<<< orphan*/  FUNC0 (struct ipw_tty*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct ipw_tty* FUNC2 (scalar_t__) ; 
 TYPE_1__* ipw_tty_driver ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_network*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_tty*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ipw_tty*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 struct ipw_tty** ttys ; 

void FUNC10(struct ipw_tty *tty)
{
	int j;
	struct ipw_network *network = ttys[tty->index]->network;

	for (j = tty->index; j < IPWIRELESS_PCMCIA_MINORS;
			j += IPWIRELESS_PCMCIA_MINOR_RANGE) {
		struct ipw_tty *ttyj = ttys[j];

		if (ttyj) {
			FUNC5(&ttyj->ipw_tty_mutex);
			if (FUNC2(j + ipw_tty_driver->minor_start) == ttyj)
				FUNC7(ttyj);
			ttyj->closing = 1;
			if (ttyj->linux_tty != NULL) {
				FUNC6(&ttyj->ipw_tty_mutex);
				FUNC8(ttyj->linux_tty);
				/* Wait till the tty_hangup has completed */
				FUNC1();
				/* FIXME: Exactly how is the tty object locked here
				   against a parallel ioctl etc */
				FUNC5(&ttyj->ipw_tty_mutex);
			}
			while (ttyj->open_count)
				FUNC0(ttyj);
			FUNC3(network,
							     ttyj->channel_idx);
			FUNC9(ipw_tty_driver, j);
			ttys[j] = NULL;
			FUNC6(&ttyj->ipw_tty_mutex);
			FUNC4(ttyj);
		}
	}
}