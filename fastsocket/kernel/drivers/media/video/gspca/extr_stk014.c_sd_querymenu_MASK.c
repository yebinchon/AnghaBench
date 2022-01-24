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
struct v4l2_querymenu {int id; scalar_t__ name; int /*<<< orphan*/  index; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_POWER_LINE_FREQUENCY 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static int FUNC1(struct gspca_dev *gspca_dev,
			struct v4l2_querymenu *menu)
{
	switch (menu->id) {
	case V4L2_CID_POWER_LINE_FREQUENCY:
		switch (menu->index) {
		case 1:		/* V4L2_CID_POWER_LINE_FREQUENCY_50HZ */
			FUNC0((char *) menu->name, "50 Hz");
			return 0;
		case 2:		/* V4L2_CID_POWER_LINE_FREQUENCY_60HZ */
			FUNC0((char *) menu->name, "60 Hz");
			return 0;
		}
		break;
	}
	return -EINVAL;
}