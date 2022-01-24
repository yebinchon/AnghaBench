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
struct async_struct {int /*<<< orphan*/  event; struct tty_struct* tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  RS_EVENT_WRITE_WAKEUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC2(unsigned long private_)
{
	struct async_struct	*info = (struct async_struct *) private_;
	struct tty_struct	*tty;

	tty = info->tty;
	if (!tty)
		return;

	if (FUNC0(RS_EVENT_WRITE_WAKEUP, &info->event))
		FUNC1(tty);
}