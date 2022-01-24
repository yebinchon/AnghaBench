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
struct psmouse {int /*<<< orphan*/  ps2dev; int /*<<< orphan*/  resolution; int /*<<< orphan*/  (* set_resolution ) (struct psmouse*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  rate; int /*<<< orphan*/  (* set_rate ) (struct psmouse*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_CMD_SETSCALE11 ; 
 scalar_t__ PSMOUSE_PS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ psmouse_max_proto ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct psmouse *psmouse)
{
/*
 * We set the mouse report rate, resolution and scaling.
 */

	if (psmouse_max_proto != PSMOUSE_PS2) {
		psmouse->set_rate(psmouse, psmouse->rate);
		psmouse->set_resolution(psmouse, psmouse->resolution);
		FUNC0(&psmouse->ps2dev, NULL, PSMOUSE_CMD_SETSCALE11);
	}
}