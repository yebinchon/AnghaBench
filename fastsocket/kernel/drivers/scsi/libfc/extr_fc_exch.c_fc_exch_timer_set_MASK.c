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
struct fc_exch {int /*<<< orphan*/  ex_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_exch*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fc_exch *ep, unsigned int timer_msec)
{
	FUNC1(&ep->ex_lock);
	FUNC0(ep, timer_msec);
	FUNC2(&ep->ex_lock);
}