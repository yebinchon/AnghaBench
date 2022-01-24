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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_tmu_priv*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_tmu_priv*,char*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct sh_tmu_priv *p, char *name,
		    unsigned long clockevent_rating,
		    unsigned long clocksource_rating)
{
	if (clockevent_rating)
		FUNC0(p, name, clockevent_rating);
	else if (clocksource_rating)
		FUNC1(p, name, clocksource_rating);

	return 0;
}