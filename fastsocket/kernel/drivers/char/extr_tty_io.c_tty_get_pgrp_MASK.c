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
struct tty_struct {int /*<<< orphan*/  ctrl_lock; int /*<<< orphan*/  pgrp; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 struct pid* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct pid *FUNC3(struct tty_struct *tty)
{
	unsigned long flags;
	struct pid *pgrp;

	FUNC1(&tty->ctrl_lock, flags);
	pgrp = FUNC0(tty->pgrp);
	FUNC2(&tty->ctrl_lock, flags);

	return pgrp;
}