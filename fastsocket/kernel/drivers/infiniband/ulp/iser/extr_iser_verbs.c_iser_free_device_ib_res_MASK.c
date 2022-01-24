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
struct iser_device {int cqs_used; int /*<<< orphan*/ * pd; int /*<<< orphan*/ * mr; int /*<<< orphan*/  cq_desc; int /*<<< orphan*/  event_handler; int /*<<< orphan*/ ** rx_cq; int /*<<< orphan*/ ** tx_cq; int /*<<< orphan*/ * cq_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct iser_device *device)
{
	int i;
	FUNC0(device->mr == NULL);

	for (i = 0; i < device->cqs_used; i++) {
		FUNC6(&device->cq_tasklet[i]);
		(void)FUNC3(device->tx_cq[i]);
		(void)FUNC3(device->rx_cq[i]);
		device->tx_cq[i] = NULL;
		device->rx_cq[i] = NULL;
	}

	(void)FUNC4(&device->event_handler);
	(void)FUNC2(device->mr);
	(void)FUNC1(device->pd);

	FUNC5(device->cq_desc);

	device->mr = NULL;
	device->pd = NULL;
}