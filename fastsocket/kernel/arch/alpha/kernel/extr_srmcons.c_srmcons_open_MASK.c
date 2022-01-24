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
struct tty_struct {struct srmcons_private* driver_data; } ;
struct TYPE_2__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct srmcons_private {int /*<<< orphan*/  lock; TYPE_1__ timer; struct tty_struct* tty; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct srmcons_private**) ; 
 int /*<<< orphan*/  srmcons_receive_chars ; 

__attribute__((used)) static int
FUNC4(struct tty_struct *tty, struct file *filp)
{
	struct srmcons_private *srmconsp;
	unsigned long flags;
	int retval;

	retval = FUNC3(&srmconsp);
	if (retval)
		return retval;

	FUNC1(&srmconsp->lock, flags);

	if (!srmconsp->tty) {
		tty->driver_data = srmconsp;

		srmconsp->tty = tty;
		srmconsp->timer.function = srmcons_receive_chars;
		srmconsp->timer.data = (unsigned long)srmconsp;
		srmconsp->timer.expires = jiffies + 10;
		FUNC0(&srmconsp->timer);
	}

	FUNC2(&srmconsp->lock, flags);

	return 0;
}