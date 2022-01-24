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
struct sh_cmt_priv {int dummy; } ;
struct clock_event_device {int mode; int /*<<< orphan*/  name; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;

/* Variables and functions */
#define  CLOCK_EVT_MODE_ONESHOT 131 
#define  CLOCK_EVT_MODE_PERIODIC 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 int /*<<< orphan*/  FLAG_CLOCKEVENT ; 
 struct sh_cmt_priv* FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_cmt_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_cmt_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(enum clock_event_mode mode,
				    struct clock_event_device *ced)
{
	struct sh_cmt_priv *p = FUNC0(ced);

	/* deal with old setting first */
	switch (ced->mode) {
	case CLOCK_EVT_MODE_PERIODIC:
	case CLOCK_EVT_MODE_ONESHOT:
		FUNC3(p, FLAG_CLOCKEVENT);
		break;
	default:
		break;
	}

	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC:
		FUNC1("sh_cmt: %s used for periodic clock events\n",
			ced->name);
		FUNC2(p, 1);
		break;
	case CLOCK_EVT_MODE_ONESHOT:
		FUNC1("sh_cmt: %s used for oneshot clock events\n",
			ced->name);
		FUNC2(p, 0);
		break;
	case CLOCK_EVT_MODE_SHUTDOWN:
	case CLOCK_EVT_MODE_UNUSED:
		FUNC3(p, FLAG_CLOCKEVENT);
		break;
	default:
		break;
	}
}