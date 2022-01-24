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
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  in_frame; scalar_t__ len; int /*<<< orphan*/  head; int /*<<< orphan*/  data; } ;
struct sir_dev {int /*<<< orphan*/  enable_rx; TYPE_1__ rx_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OUTSIDE_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct sir_dev *dev)
{
	if (FUNC2(FUNC0(&dev->enable_rx)))
		return;

	/* flush rx-buffer - should also help in case of problems with echo cancelation */
	dev->rx_buff.data = dev->rx_buff.head;
	dev->rx_buff.len = 0;
	dev->rx_buff.in_frame = FALSE;
	dev->rx_buff.state = OUTSIDE_FRAME;
	FUNC1(&dev->enable_rx, 1);
}