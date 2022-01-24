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
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQEN_TSE ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 struct cx23888_ir_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, u8 *buf, size_t count,
			       ssize_t *num)
{
	struct cx23888_ir_state *state = FUNC1(sd);
	struct cx23885_dev *dev = state->dev;
	/* For now enable the Tx FIFO Service interrupt & pretend we did work */
	FUNC0(dev, IRQEN_TSE);
	*num = count;
	return 0;
}