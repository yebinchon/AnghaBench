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
struct gameport {int /*<<< orphan*/  dev; int /*<<< orphan*/  node; scalar_t__ registered; TYPE_1__* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/ * child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct gameport* FUNC1 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gameport *gameport)
{
	struct gameport *child;

	child = FUNC1(gameport);
	if (child) {
		FUNC2(child);
		FUNC4(&child->dev);
	}

	if (gameport->parent) {
		gameport->parent->child = NULL;
		gameport->parent = NULL;
	}

	if (gameport->registered) {
		FUNC0(&gameport->dev);
		gameport->registered = 0;
	}

	FUNC3(&gameport->node);

	FUNC2(gameport);
	FUNC4(&gameport->dev);
}