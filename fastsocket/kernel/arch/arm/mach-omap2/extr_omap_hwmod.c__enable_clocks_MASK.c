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
struct omap_hwmod_ocp_if {int flags; struct clk* _clk; } ;
struct omap_hwmod {int slaves_cnt; struct omap_hwmod_ocp_if** slaves; struct clk* _clk; int /*<<< orphan*/  name; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int OCPIF_SWSUP_IDLE ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct omap_hwmod *oh)
{
	struct omap_hwmod_ocp_if *os;
	int i;

	FUNC2("omap_hwmod: %s: enabling clocks\n", oh->name);

	if (oh->_clk && !FUNC0(oh->_clk))
		FUNC1(oh->_clk);

	if (oh->slaves_cnt > 0) {
		for (i = 0, os = *oh->slaves; i < oh->slaves_cnt; i++, os++) {
			struct clk *c = os->_clk;

			if (c && !FUNC0(c) && (os->flags & OCPIF_SWSUP_IDLE))
				FUNC1(c);
		}
	}

	/* The opt clocks are controlled by the device driver. */

	return 0;
}