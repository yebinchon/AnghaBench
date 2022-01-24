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
struct file {int dummy; } ;
struct cx8802_fh {struct cx8802_dev* dev; } ;
struct cx8802_dev {int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx8802_dev*,struct v4l2_queryctrl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct v4l2_querymenu*,struct v4l2_queryctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (struct file *file, void *priv,
				struct v4l2_querymenu *qmenu)
{
	struct cx8802_dev *dev  = ((struct cx8802_fh *)priv)->dev;
	struct v4l2_queryctrl qctrl;

	qctrl.id = qmenu->id;
	FUNC0(dev, &qctrl);
	return FUNC2(qmenu, &qctrl,
			FUNC1(&dev->params, qmenu->id));
}