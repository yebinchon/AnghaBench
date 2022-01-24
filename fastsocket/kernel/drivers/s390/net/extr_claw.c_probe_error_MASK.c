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
struct claw_privbk {struct claw_privbk* p_mtc_envelope; struct claw_privbk* p_env; } ;
struct ccwgroup_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 struct claw_privbk* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct claw_privbk*) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC4( struct ccwgroup_device *cgdev)
{
	struct claw_privbk *privptr;

	FUNC0(4, trace, "proberr");
	privptr = FUNC1(&cgdev->dev);
	if (privptr != NULL) {
		FUNC2(&cgdev->dev, NULL);
		FUNC3(privptr->p_env);
		FUNC3(privptr->p_mtc_envelope);
		FUNC3(privptr);
	}
}