#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct serio {struct serio* parent; TYPE_2__ id; TYPE_1__ dev; } ;
struct psmouse {int /*<<< orphan*/  dev; int /*<<< orphan*/  (* pt_deactivate ) (struct psmouse*) ;int /*<<< orphan*/  (* disconnect ) (struct psmouse*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_CMD_MODE ; 
 int /*<<< orphan*/  PSMOUSE_IGNORE ; 
 scalar_t__ SERIO_PS_PSTHRU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*) ; 
 int /*<<< orphan*/  kpsmoused_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*) ; 
 int /*<<< orphan*/  psmouse_attribute_group ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*) ; 
 int /*<<< orphan*/  psmouse_mutex ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct serio*) ; 
 struct psmouse* FUNC9 (struct serio*) ; 
 int /*<<< orphan*/  FUNC10 (struct serio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC12 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct serio *serio)
{
	struct psmouse *psmouse, *parent = NULL;

	psmouse = FUNC9(serio);

	FUNC13(&serio->dev.kobj, &psmouse_attribute_group);

	FUNC3(&psmouse_mutex);

	FUNC7(psmouse, PSMOUSE_CMD_MODE);

	/* make sure we don't have a resync in progress */
	FUNC4(&psmouse_mutex);
	FUNC0(kpsmoused_wq);
	FUNC3(&psmouse_mutex);

	if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
		parent = FUNC9(serio->parent);
		FUNC6(parent);
	}

	if (psmouse->disconnect)
		psmouse->disconnect(psmouse);

	if (parent && parent->pt_deactivate)
		parent->pt_deactivate(parent);

	FUNC7(psmouse, PSMOUSE_IGNORE);

	FUNC8(serio);
	FUNC10(serio, NULL);
	FUNC1(psmouse->dev);
	FUNC2(psmouse);

	if (parent)
		FUNC5(parent);

	FUNC4(&psmouse_mutex);
}