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
struct ccw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmur_mutex ; 

__attribute__((used)) static int FUNC3(struct ccw_device *cdev)
{
	int rc;

	FUNC0(&vmur_mutex);
	rc = FUNC2(cdev, 0);
	FUNC1(&vmur_mutex);
	return rc;
}