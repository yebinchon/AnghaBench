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
struct t3cdev {int /*<<< orphan*/ * ulp_iscsi; } ;
struct cxgbi_device {scalar_t__ lldev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct t3cdev*) ; 

__attribute__((used)) static void FUNC2(struct cxgbi_device *cdev)
{
	struct t3cdev *tdev = (struct t3cdev *)cdev->lldev;

	if (FUNC0(cdev)) {
		FUNC1("t3dev 0x%p, ulp_iscsi no more user.\n", tdev);
		tdev->ulp_iscsi = NULL;
	}
}