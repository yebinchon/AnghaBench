#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {scalar_t__ expires; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  POWERDOWN_FREQ ; 
 int POWERDOWN_TIMEOUT ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ blink_timer ; 
 scalar_t__ has_panicked ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  power_timeout ; 
 TYPE_1__ power_timer ; 
 int shuting_down ; 

__attribute__((used)) static inline void FUNC5(void)
{
	if (has_panicked)
		return;

	if (shuting_down || FUNC4(SIGINT, 1)) {
		/* No init process or button pressed twice.  */
		FUNC3();
	}

	shuting_down = 1;
	blink_timer.data = POWERDOWN_FREQ;
	FUNC1(POWERDOWN_FREQ);

	FUNC2(&power_timer);
	power_timer.function = power_timeout;
	power_timer.expires = jiffies + POWERDOWN_TIMEOUT * HZ;
	FUNC0(&power_timer);
}