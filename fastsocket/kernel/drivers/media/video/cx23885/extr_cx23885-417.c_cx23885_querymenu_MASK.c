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
struct v4l2_querymenu {int /*<<< orphan*/  id; } ;
struct v4l2_queryctrl {int /*<<< orphan*/  id; } ;
struct cx23885_dev {int /*<<< orphan*/  mpeg_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,struct v4l2_queryctrl*) ; 
 int FUNC2 (struct v4l2_querymenu*,struct v4l2_queryctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cx23885_dev *dev,
	struct v4l2_querymenu *qmenu)
{
	struct v4l2_queryctrl qctrl;

	qctrl.id = qmenu->id;
	FUNC1(dev, &qctrl);
	return FUNC2(qmenu, &qctrl,
		FUNC0(&dev->mpeg_params, qmenu->id));
}