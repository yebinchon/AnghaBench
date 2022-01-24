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
struct rtl8139_private {int twistie; scalar_t__ chipset; int drv_flags; int have_thread; int /*<<< orphan*/  thread; scalar_t__ watchdog_fired; } ;

/* Variables and functions */
 scalar_t__ CH_8139_K ; 
 int HAS_LNK_CHNG ; 
 int /*<<< orphan*/  next_tick ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct rtl8139_private *tp)
{
	tp->twistie = 0;
	if (tp->chipset == CH_8139_K)
		tp->twistie = 1;
	else if (tp->drv_flags & HAS_LNK_CHNG)
		return;

	tp->have_thread = 1;
	tp->watchdog_fired = 0;

	FUNC0(&tp->thread, next_tick);
}