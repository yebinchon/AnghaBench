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
struct vivi_fh {struct vivi_dev* dev; } ;
struct vivi_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vivi_dev*,int,char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct vivi_fh*) ; 

__attribute__((used)) static int FUNC4(void *data)
{
	struct vivi_fh  *fh = data;
	struct vivi_dev *dev = fh->dev;

	FUNC0(dev, 1, "thread started\n");

	FUNC2();

	for (;;) {
		FUNC3(fh);

		if (FUNC1())
			break;
	}
	FUNC0(dev, 1, "thread: exit\n");
	return 0;
}