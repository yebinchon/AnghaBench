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
struct tty_struct {int count; struct srmcons_private* driver_data; } ;
struct srmcons_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/ * tty; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct tty_struct *tty, struct file *filp)
{
	struct srmcons_private *srmconsp = tty->driver_data;
	unsigned long flags;

	FUNC1(&srmconsp->lock, flags);

	if (tty->count == 1) {
		srmconsp->tty = NULL;
		FUNC0(&srmconsp->timer);
	}

	FUNC2(&srmconsp->lock, flags);
}