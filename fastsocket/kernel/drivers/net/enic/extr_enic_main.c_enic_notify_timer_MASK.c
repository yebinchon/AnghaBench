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
struct enic {int /*<<< orphan*/  notify_timer; } ;

/* Variables and functions */
 scalar_t__ ENIC_NOTIFY_TIMER_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (struct enic*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct enic *enic = (struct enic *)data;

	FUNC0(enic);

	FUNC1(&enic->notify_timer,
		FUNC2(jiffies + ENIC_NOTIFY_TIMER_PERIOD));
}