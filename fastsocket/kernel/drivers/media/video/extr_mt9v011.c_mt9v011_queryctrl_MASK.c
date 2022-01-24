#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {scalar_t__ id; } ;
struct TYPE_4__ {scalar_t__ id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_queryctrl*,TYPE_1__*,int) ; 
 TYPE_1__* mt9v011_qctrl ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_queryctrl *qc)
{
	int i;

	FUNC2(1, debug, sd, "queryctrl called\n");

	for (i = 0; i < FUNC0(mt9v011_qctrl); i++)
		if (qc->id && qc->id == mt9v011_qctrl[i].id) {
			FUNC1(qc, &(mt9v011_qctrl[i]),
			       sizeof(*qc));
			return 0;
		}

	return -EINVAL;
}