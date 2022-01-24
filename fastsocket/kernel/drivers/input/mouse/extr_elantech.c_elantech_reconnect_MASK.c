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
struct psmouse {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct psmouse*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct psmouse *psmouse)
{
	if (FUNC0(psmouse, 0))
		return -1;

	if (FUNC1(psmouse)) {
		FUNC2("elantech.c: failed to put touchpad back into absolute mode.\n");
		return -1;
	}

	return 0;
}