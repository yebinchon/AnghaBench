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
struct tty_struct {int dummy; } ;
struct mkiss {scalar_t__ mtu; TYPE_2__* dev; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_errors; } ;
struct TYPE_4__ {scalar_t__ mtu; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXF_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct mkiss*) ; 
 int /*<<< orphan*/  FUNC1 (struct mkiss*,int /*<<< orphan*/ ) ; 
 struct mkiss* FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mkiss*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty, const unsigned char *cp,
	char *fp, int count)
{
	struct mkiss *ax = FUNC2(tty);

	if (!ax)
		return;

	/*
	 * Argh! mtu change time! - costs us the packet part received
	 * at the change
	 */
	if (ax->mtu != ax->dev->mtu + 73)
		FUNC0(ax);

	/* Read the characters out of the buffer */
	while (count--) {
		if (fp != NULL && *fp++) {
			if (!FUNC4(AXF_ERROR, &ax->flags))
				ax->dev->stats.rx_errors++;
			cp++;
			continue;
		}

		FUNC1(ax, *cp++);
	}

	FUNC3(ax);
	FUNC5(tty);
}