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
struct nvt_dev {int /*<<< orphan*/  rdev; scalar_t__ pkts; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct nvt_dev *nvt)
{
	FUNC2(KERN_WARNING, "RX FIFO overrun detected, flushing data!");

	nvt->pkts = 0;
	FUNC1(nvt);
	FUNC0(nvt->rdev);
}