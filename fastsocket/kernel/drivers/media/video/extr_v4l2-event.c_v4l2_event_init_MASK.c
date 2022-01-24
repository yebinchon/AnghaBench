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
struct v4l2_fh {TYPE_1__* events; } ;
struct TYPE_2__ {int sequence; int /*<<< orphan*/  subscribed; int /*<<< orphan*/  available; int /*<<< orphan*/  free; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(struct v4l2_fh *fh)
{
	fh->events = FUNC2(sizeof(*fh->events), GFP_KERNEL);
	if (fh->events == NULL)
		return -ENOMEM;

	FUNC1(&fh->events->wait);

	FUNC0(&fh->events->free);
	FUNC0(&fh->events->available);
	FUNC0(&fh->events->subscribed);

	fh->events->sequence = -1;

	return 0;
}