#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int* bytes; } ;
struct CHIPSTATE {TYPE_1__ shadow; struct v4l2_subdev sd; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int FUNC1 (struct CHIPSTATE*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct CHIPSTATE *chip,
			     int subaddr, int val, int mask)
{
	struct v4l2_subdev *sd = &chip->sd;

	if (mask != 0) {
		if (subaddr < 0) {
			val = (chip->shadow.bytes[1] & ~mask) | (val & mask);
		} else {
			if (subaddr + 1 >= FUNC0(chip->shadow.bytes)) {
				FUNC2(sd,
					"Tried to access a non-existent register: %d\n",
					subaddr);
				return -EINVAL;
			}

			val = (chip->shadow.bytes[subaddr+1] & ~mask) | (val & mask);
		}
	}
	return FUNC1(chip, subaddr, val);
}