#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  toplight; int /*<<< orphan*/  bottomlight; int /*<<< orphan*/  qx3_detected; } ;
struct TYPE_4__ {TYPE_1__ qx3; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __s32 ;

/* Variables and functions */
 int EINVAL ; 

__attribute__((used)) static int FUNC0(struct gspca_dev *gspca_dev, __s32 *val, int n)
{
	struct sd *sd = (struct sd *) gspca_dev;

	if (!sd->params.qx3.qx3_detected)
		return -EINVAL;

	switch (n) {
	case 1:
		*val = sd->params.qx3.bottomlight;
		break;
	case 2:
		*val = sd->params.qx3.toplight;
		break;
	default:
		return -EINVAL;
	}
	return 0;
}