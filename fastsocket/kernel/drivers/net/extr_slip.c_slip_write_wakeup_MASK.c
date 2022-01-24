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
struct tty_struct {TYPE_1__* ops; int /*<<< orphan*/  flags; struct slip* disc_data; } ;
struct slip {scalar_t__ magic; scalar_t__ xleft; int xhead; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,int,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ SLIP_MAGIC ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slip*) ; 
 int FUNC3 (struct tty_struct*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	int actual;
	struct slip *sl = tty->disc_data;

	/* First make sure we're connected. */
	if (!sl || sl->magic != SLIP_MAGIC || !FUNC1(sl->dev))
		return;

	if (sl->xleft <= 0)  {
		/* Now serial buffer is almost free & we can start
		 * transmission of another packet */
		sl->tx_packets++;
		FUNC0(TTY_DO_WRITE_WAKEUP, &tty->flags);
		FUNC2(sl);
		return;
	}

	actual = tty->ops->write(tty, sl->xhead, sl->xleft);
	sl->xleft -= actual;
	sl->xhead += actual;
}