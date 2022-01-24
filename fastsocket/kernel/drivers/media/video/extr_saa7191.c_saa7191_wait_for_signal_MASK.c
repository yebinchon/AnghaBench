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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int SAA7191_STATUS_HLCK ; 
 int SAA7191_SYNC_COUNT ; 
 int /*<<< orphan*/  SAA7191_SYNC_DELAY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct v4l2_subdev*,int*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, u8 *status)
{
	int i = 0;

	FUNC0("Checking for signal...\n");

	for (i = 0; i < SAA7191_SYNC_COUNT; i++) {
		if (FUNC2(sd, status))
			return -EIO;

		if (((*status) & SAA7191_STATUS_HLCK) == 0) {
			FUNC0("Signal found\n");
			return 0;
		}

		FUNC1(SAA7191_SYNC_DELAY);
	}

	FUNC0("No signal\n");

	return -EBUSY;
}