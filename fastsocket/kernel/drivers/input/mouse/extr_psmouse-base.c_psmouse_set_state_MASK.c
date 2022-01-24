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
struct TYPE_2__ {int /*<<< orphan*/  serio; } ;
struct psmouse {TYPE_1__ ps2dev; } ;
typedef  enum psmouse_state { ____Placeholder_psmouse_state } psmouse_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct psmouse *psmouse, enum psmouse_state new_state)
{
	FUNC2(psmouse->ps2dev.serio);
	FUNC0(psmouse, new_state);
	FUNC1(psmouse->ps2dev.serio);
}