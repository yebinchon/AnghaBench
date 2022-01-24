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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct serio {TYPE_1__ dev; } ;
struct atkbd {int /*<<< orphan*/  dev; int /*<<< orphan*/  event_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  atkbd_attribute_group ; 
 int /*<<< orphan*/  FUNC0 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*) ; 
 struct atkbd* FUNC5 (struct serio*) ; 
 int /*<<< orphan*/  FUNC6 (struct serio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct serio *serio)
{
	struct atkbd *atkbd = FUNC5(serio);

	FUNC0(atkbd);

	/* make sure we don't have a command in flight */
	FUNC1(&atkbd->event_work);

	FUNC7(&serio->dev.kobj, &atkbd_attribute_group);
	FUNC2(atkbd->dev);
	FUNC4(serio);
	FUNC6(serio, NULL);
	FUNC3(atkbd);
}