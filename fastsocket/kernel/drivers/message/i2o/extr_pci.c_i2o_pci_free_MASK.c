#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ virt; } ;
struct TYPE_4__ {scalar_t__ virt; } ;
struct i2o_controller {TYPE_3__* pdev; TYPE_2__ base; TYPE_1__ in_queue; scalar_t__ raptor; int /*<<< orphan*/  status; int /*<<< orphan*/  hrt; int /*<<< orphan*/  dlct; int /*<<< orphan*/  lct; int /*<<< orphan*/  status_block; int /*<<< orphan*/  out_queue; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(struct i2o_controller *c)
{
	struct device *dev;

	dev = &c->pdev->dev;

	FUNC0(dev, &c->out_queue);
	FUNC0(dev, &c->status_block);
	FUNC2(c->lct);
	FUNC0(dev, &c->dlct);
	FUNC0(dev, &c->hrt);
	FUNC0(dev, &c->status);

	if (c->raptor && c->in_queue.virt)
		FUNC1(c->in_queue.virt);

	if (c->base.virt)
		FUNC1(c->base.virt);

	FUNC3(c->pdev);
}