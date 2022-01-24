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
struct raw3215_info {struct raw3215_info* buffer; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 struct raw3215_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct raw3215_info*) ; 

__attribute__((used)) static void FUNC4 (struct ccw_device *cdev)
{
	struct raw3215_info *raw;

	FUNC0(cdev);
	raw = FUNC1(&cdev->dev);
	if (raw) {
		FUNC2(&cdev->dev, NULL);
		FUNC3(raw->buffer);
		FUNC3(raw);
	}
}