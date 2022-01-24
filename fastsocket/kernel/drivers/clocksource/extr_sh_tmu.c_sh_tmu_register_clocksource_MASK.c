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
struct clocksource {char* name; unsigned long rating; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; int /*<<< orphan*/  read; } ;
struct sh_tmu_priv {struct clocksource cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLOCK_SOURCE_IS_CONTINUOUS ; 
 int /*<<< orphan*/  FUNC1 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  sh_tmu_clocksource_disable ; 
 int /*<<< orphan*/  sh_tmu_clocksource_enable ; 
 int /*<<< orphan*/  sh_tmu_clocksource_read ; 

__attribute__((used)) static int FUNC3(struct sh_tmu_priv *p,
				       char *name, unsigned long rating)
{
	struct clocksource *cs = &p->cs;

	cs->name = name;
	cs->rating = rating;
	cs->read = sh_tmu_clocksource_read;
	cs->enable = sh_tmu_clocksource_enable;
	cs->disable = sh_tmu_clocksource_disable;
	cs->mask = FUNC0(32);
	cs->flags = CLOCK_SOURCE_IS_CONTINUOUS;
	FUNC2("sh_tmu: %s used as clock source\n", cs->name);
	FUNC1(cs);
	return 0;
}