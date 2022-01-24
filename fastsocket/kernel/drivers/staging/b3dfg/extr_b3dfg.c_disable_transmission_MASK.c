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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct b3dfg_dev {int /*<<< orphan*/  buffer_waitqueue; int /*<<< orphan*/  buffer_lock; scalar_t__ transmission_enabled; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B3D_REG_DMA_STS ; 
 int /*<<< orphan*/  B3D_REG_HW_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct b3dfg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b3dfg_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b3dfg_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct b3dfg_dev *fgdev)
{
	struct device *dev = &fgdev->pdev->dev;
	unsigned long flags;
	u32 tmp;

	FUNC3(dev, "disable transmission\n");

	/* guarantee that no more interrupts will be serviced */
	FUNC4(&fgdev->buffer_lock, flags);
	fgdev->transmission_enabled = 0;

	FUNC1(fgdev, B3D_REG_HW_CTRL, 0);

	/* FIXME: temporary debugging only. if the board stops transmitting,
	 * hitting ctrl+c and seeing this message is useful for determining
	 * the state of the board. */
	tmp = FUNC0(fgdev, B3D_REG_DMA_STS);
	FUNC3(dev, "DMA_STS reads %x after TX stopped\n", tmp);

	FUNC2(fgdev);
	FUNC5(&fgdev->buffer_lock, flags);

	FUNC6(&fgdev->buffer_waitqueue);
}