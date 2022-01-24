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
struct raw3215_info {int /*<<< orphan*/  cdev; int /*<<< orphan*/  flags; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RAW3215_BUFFER_SIZE ; 
 int /*<<< orphan*/  RAW3215_FROZEN ; 
 struct raw3215_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct raw3215_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ccw_device *cdev)
{
	struct raw3215_info *raw;
	unsigned long flags;

	/* Empty the output buffer, then prevent new I/O. */
	raw = FUNC0(&cdev->dev);
	FUNC3(FUNC1(raw->cdev), flags);
	FUNC2(raw, RAW3215_BUFFER_SIZE);
	raw->flags |= RAW3215_FROZEN;
	FUNC4(FUNC1(raw->cdev), flags);
	return 0;
}