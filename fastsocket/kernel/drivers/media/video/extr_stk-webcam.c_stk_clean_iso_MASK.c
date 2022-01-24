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
struct urb {int dummy; } ;
struct stk_camera {TYPE_1__* isobufs; int /*<<< orphan*/  urbs_used; } ;
struct TYPE_2__ {struct TYPE_2__* data; struct urb* urb; } ;

/* Variables and functions */
 int MAX_ISO_BUFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 

__attribute__((used)) static void FUNC6(struct stk_camera *dev)
{
	int i;

	if (dev == NULL || dev->isobufs == NULL)
		return;

	for (i = 0; i < MAX_ISO_BUFS; i++) {
		struct urb *urb;

		urb = dev->isobufs[i].urb;
		if (urb) {
			if (FUNC0(&dev->urbs_used) && FUNC1(dev))
				FUNC5(urb);
			FUNC4(urb);
		}
		FUNC2(dev->isobufs[i].data);
	}
	FUNC2(dev->isobufs);
	dev->isobufs = NULL;
	FUNC3(dev);
}