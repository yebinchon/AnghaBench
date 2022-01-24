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
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct serio {int registered; TYPE_3__ dev; int /*<<< orphan*/  node; TYPE_1__* parent; int /*<<< orphan*/  (* stop ) (struct serio*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct serio* FUNC4 (struct serio*) ; 
 int /*<<< orphan*/  serio_id_attr_group ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct serio*) ; 
 int /*<<< orphan*/  FUNC7 (struct serio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct serio *serio)
{
	struct serio *child;

	child = FUNC4(serio);
	if (child) {
		FUNC6(child);
		FUNC2(&child->dev);
	}

	if (serio->stop)
		serio->stop(serio);

	if (serio->parent) {
		FUNC5(serio->parent);
		serio->parent->child = NULL;
		FUNC3(serio->parent);
		serio->parent = NULL;
	}

	if (serio->registered) {
		FUNC8(&serio->dev.kobj, &serio_id_attr_group);
		FUNC0(&serio->dev);
		serio->registered = false;
	}

	FUNC1(&serio->node);
	FUNC6(serio);
	FUNC2(&serio->dev);
}