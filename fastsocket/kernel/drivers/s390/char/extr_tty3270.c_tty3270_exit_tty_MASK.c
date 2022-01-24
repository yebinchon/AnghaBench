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
struct tty3270 {int /*<<< orphan*/  view; } ;
struct kbd_data {TYPE_1__* tty; } ;
struct TYPE_2__ {struct tty3270* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct kbd_data *kbd)
{
	struct tty3270 *tp;

	tp = kbd->tty->driver_data;
	FUNC0(&tp->view);
}