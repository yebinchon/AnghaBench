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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPARE ; 
 int /*<<< orphan*/  COUNT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(unsigned long delta,
		struct clock_event_device *evdev)
{
	unsigned long	flags;

	FUNC1(flags);

	/* The time to read COUNT then update COMPARE must be less
	 * than the min_delta_ns value for this clockevent source.
	 */
	FUNC3(COMPARE, (FUNC2(COUNT) + delta) ? : 1);

	FUNC0(flags);

	return 0;
}