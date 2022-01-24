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
struct sh_tmu_priv {int dummy; } ;
struct clock_event_device {scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CLOCK_EVT_MODE_ONESHOT ; 
 struct sh_tmu_priv* FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_tmu_priv*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned long delta,
				   struct clock_event_device *ced)
{
	struct sh_tmu_priv *p = FUNC1(ced);

	FUNC0(ced->mode != CLOCK_EVT_MODE_ONESHOT);

	/* program new delta value */
	FUNC2(p, delta, 0);
	return 0;
}