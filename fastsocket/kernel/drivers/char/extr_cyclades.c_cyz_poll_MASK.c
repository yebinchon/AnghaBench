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
struct tty_struct {int dummy; } ;
struct cyclades_port {int /*<<< orphan*/  throttle; int /*<<< orphan*/  port; } ;
struct cyclades_card {int intr_enabled; unsigned int nports; struct cyclades_port* ports; } ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned int NR_CARDS ; 
 struct cyclades_card* cy_card ; 
 int /*<<< orphan*/  FUNC0 (struct cyclades_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct cyclades_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct cyclades_port*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct cyclades_port*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct cyclades_card*) ; 
 unsigned long cyz_polling_cycle ; 
 int /*<<< orphan*/  cyz_timerlist ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 struct tty_struct* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(unsigned long arg)
{
	struct cyclades_card *cinfo;
	struct cyclades_port *info;
	unsigned long expires = jiffies + HZ;
	unsigned int port, card;

	for (card = 0; card < NR_CARDS; card++) {
		cinfo = &cy_card[card];

		if (!FUNC0(cinfo))
			continue;
		if (!FUNC4(cinfo))
			continue;

	/* Skip first polling cycle to avoid racing conditions with the FW */
		if (!cinfo->intr_enabled) {
			cinfo->intr_enabled = 1;
			continue;
		}

		FUNC1(cinfo);

		for (port = 0; port < cinfo->nports; port++) {
			struct tty_struct *tty;

			info = &cinfo->ports[port];
			tty = FUNC7(&info->port);
			/* OK to pass NULL to the handle functions below.
			   They need to drop the data in that case. */

			if (!info->throttle)
				FUNC2(info, tty);
			FUNC3(info, tty);
			FUNC6(tty);
		}
		/* poll every 'cyz_polling_cycle' period */
		expires = jiffies + cyz_polling_cycle;
	}
	FUNC5(&cyz_timerlist, expires);
}