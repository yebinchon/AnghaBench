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
typedef  scalar_t__ u8 ;
struct si4713_device {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct si4713_device*) ; 
 int FUNC3 (struct si4713_device*) ; 

__attribute__((used)) static int FUNC4(struct si4713_device *sdev, u8 value)
{
	int rval;

	FUNC0(&sdev->mutex);

	if (value)
		rval = FUNC3(sdev);
	else
		rval = FUNC2(sdev);

	FUNC1(&sdev->mutex);
	return rval;
}