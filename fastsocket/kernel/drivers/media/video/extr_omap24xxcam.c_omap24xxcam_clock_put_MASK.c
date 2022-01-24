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
struct omap24xxcam_device {int /*<<< orphan*/ * fck; int /*<<< orphan*/ * ick; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct omap24xxcam_device *cam)
{
	if (cam->ick != NULL && !FUNC0(cam->ick))
		FUNC1(cam->ick);
	if (cam->fck != NULL && !FUNC0(cam->fck))
		FUNC1(cam->fck);

	cam->ick = cam->fck = NULL;
}