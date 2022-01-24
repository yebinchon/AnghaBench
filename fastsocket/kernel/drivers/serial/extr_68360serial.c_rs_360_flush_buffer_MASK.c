#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ser_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  TX_WAKEUP ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	ser_info_t *info = (ser_info_t *)tty->driver_data;
				
	if (FUNC0(info, tty->name, "rs_flush_buffer"))
		return;

	/* There is nothing to "flush", whatever we gave the CPM
	 * is on its way out.
	 */
	FUNC1(tty);
	info->flags &= ~TX_WAKEUP;
}