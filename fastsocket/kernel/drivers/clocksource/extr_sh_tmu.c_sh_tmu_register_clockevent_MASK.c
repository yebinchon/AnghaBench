#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct clock_event_device {char* name; unsigned long rating; int /*<<< orphan*/  set_mode; int /*<<< orphan*/  set_next_event; int /*<<< orphan*/  cpumask; int /*<<< orphan*/  features; } ;
struct sh_tmu_priv {TYPE_1__ irqaction; struct clock_event_device ced; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_FEAT_ONESHOT ; 
 int /*<<< orphan*/  CLOCK_EVT_FEAT_PERIODIC ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  sh_tmu_clock_event_mode ; 
 int /*<<< orphan*/  sh_tmu_clock_event_next ; 

__attribute__((used)) static void FUNC6(struct sh_tmu_priv *p,
				       char *name, unsigned long rating)
{
	struct clock_event_device *ced = &p->ced;
	int ret;

	FUNC2(ced, 0, sizeof(*ced));

	ced->name = name;
	ced->features = CLOCK_EVT_FEAT_PERIODIC;
	ced->features |= CLOCK_EVT_FEAT_ONESHOT;
	ced->rating = rating;
	ced->cpumask = FUNC1(0);
	ced->set_next_event = sh_tmu_clock_event_next;
	ced->set_mode = sh_tmu_clock_event_mode;

	ret = FUNC5(p->irqaction.irq, &p->irqaction);
	if (ret) {
		FUNC3("sh_tmu: failed to request irq %d\n",
		       p->irqaction.irq);
		return;
	}

	FUNC4("sh_tmu: %s used for clock events\n", ced->name);
	FUNC0(ced);
}