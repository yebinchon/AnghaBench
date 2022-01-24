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
struct vio_port {int /*<<< orphan*/  crq_work; int /*<<< orphan*/  dma_dev; } ;
struct srp_target {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vio_port* FUNC1 (struct srp_target*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vtgtd ; 

__attribute__((used)) static irqreturn_t FUNC3(int dummy, void *data)
{
	struct srp_target *target = data;
	struct vio_port *vport = FUNC1(target);

	FUNC2(vport->dma_dev);
	FUNC0(vtgtd, &vport->crq_work);

	return IRQ_HANDLED;
}