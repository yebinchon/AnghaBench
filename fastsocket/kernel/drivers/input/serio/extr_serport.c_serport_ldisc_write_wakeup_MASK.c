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
struct tty_struct {scalar_t__ disc_data; } ;
struct serport {int /*<<< orphan*/  lock; int /*<<< orphan*/  serio; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SERPORT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty_struct * tty)
{
	struct serport *serport = (struct serport *) tty->disc_data;
	unsigned long flags;

	FUNC1(&serport->lock, flags);
	if (FUNC3(SERPORT_ACTIVE, &serport->flags))
		FUNC0(serport->serio);
	FUNC2(&serport->lock, flags);
}