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
struct TYPE_2__ {scalar_t__ type; } ;
struct serio {struct serio* parent; TYPE_1__ id; } ;
struct psmouse {int /*<<< orphan*/  (* pt_deactivate ) (struct psmouse*) ;int /*<<< orphan*/  ps2dev; int /*<<< orphan*/  (* cleanup ) (struct psmouse*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_CMD_ENABLE ; 
 scalar_t__ SERIO_PS_PSTHRU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*) ; 
 int /*<<< orphan*/  psmouse_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*) ; 
 struct psmouse* FUNC6 (struct serio*) ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC8 (struct psmouse*) ; 

__attribute__((used)) static void FUNC9(struct serio *serio)
{
	struct psmouse *psmouse = FUNC6(serio);
	struct psmouse *parent = NULL;

	FUNC0(&psmouse_mutex);

	if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
		parent = FUNC6(serio->parent);
		FUNC4(parent);
	}

	FUNC4(psmouse);

	if (psmouse->cleanup)
		psmouse->cleanup(psmouse);

	FUNC5(psmouse);

/*
 * Some boxes, such as HP nx7400, get terribly confused if mouse
 * is not fully enabled before suspending/shutting down.
 */
	FUNC2(&psmouse->ps2dev, NULL, PSMOUSE_CMD_ENABLE);

	if (parent) {
		if (parent->pt_deactivate)
			parent->pt_deactivate(parent);

		FUNC3(parent);
	}

	FUNC1(&psmouse_mutex);
}