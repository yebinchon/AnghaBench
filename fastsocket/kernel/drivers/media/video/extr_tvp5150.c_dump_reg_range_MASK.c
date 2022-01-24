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
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct v4l2_subdev *sd, char *s, u8 init,
				const u8 end, int max_line)
{
	int i = 0;

	while (init != (u8)(end + 1)) {
		if ((i % max_line) == 0) {
			if (i > 0)
				FUNC0("\n");
			FUNC0("tvp5150: %s reg 0x%02x = ", s, init);
		}
		FUNC0("%02x ", FUNC1(sd, init));

		init++;
		i++;
	}
	FUNC0("\n");
}