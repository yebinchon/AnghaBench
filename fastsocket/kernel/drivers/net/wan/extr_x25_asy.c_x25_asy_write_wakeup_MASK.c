#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct x25_asy {scalar_t__ magic; scalar_t__ xleft; int xhead; TYPE_3__* dev; } ;
struct tty_struct {TYPE_2__* ops; int /*<<< orphan*/  flags; struct x25_asy* disc_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_packets; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
struct TYPE_5__ {int (* write ) (struct tty_struct*,int,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 scalar_t__ X25_ASY_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (struct tty_struct*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct x25_asy*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	int actual;
	struct x25_asy *sl = tty->disc_data;

	/* First make sure we're connected. */
	if (!sl || sl->magic != X25_ASY_MAGIC || !FUNC1(sl->dev))
		return;

	if (sl->xleft <= 0) {
		/* Now serial buffer is almost free & we can start
		 * transmission of another packet */
		sl->dev->stats.tx_packets++;
		FUNC0(TTY_DO_WRITE_WAKEUP, &tty->flags);
		FUNC3(sl);
		return;
	}

	actual = tty->ops->write(tty, sl->xhead, sl->xleft);
	sl->xleft -= actual;
	sl->xhead += actual;
}