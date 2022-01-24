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
typedef  int u8 ;
struct tty_struct {int dummy; } ;
struct moxa_port {int DCDState; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 struct tty_struct* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct moxa_port *p, u8 dcd)
{
	struct tty_struct *tty;
	dcd = !!dcd;

	if (dcd != p->DCDState) {
		tty = FUNC3(&p->port);
		if (tty && FUNC0(tty) && !dcd)
			FUNC1(tty);
		FUNC2(tty);
	}
	p->DCDState = dcd;
}